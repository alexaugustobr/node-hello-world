docker login registry.danka.tech/danka-tech
docker buildx build \
  --push \
  --platform linux/arm64/v8,linux/amd64 \
  --tag registry.danka.tech/danka-tech/hellonodefromdanka:latest .