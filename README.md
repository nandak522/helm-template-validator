# helm-template-validator
Validates Helm Templates (used by helm-template-validator Github Action)

## Build Image
```sh
docker build --build-arg VERSION=3.2.0 -t nanda/helm-template-validator:v0.1.0 .
```

---
## Usage
```sh
docker run -it nanda/helm-template-validator:v0.1.0 # prints help for Helm

docker run -it nanda/helm-template-validator:v0.1.0 version

docker run -it nanda/helm-template-validator:v0.1.0 template ...
```
