# helm-template-validator
Validates Helm Templates (used by helm-template-validator Github Action)

## Build Image
> `<helm-version>` mentioned below is defined in `HELM_VERSION.txt` file.
> `<version>` mentioned below is defined in `VERSION.txt` file.
```sh
docker build --build-arg HELM_VERSION=<helm-version> -t nanda/helm-template-validator:<version> .
```

---
## Usage
> `<version>` mentioned below is defined in `VERSION.txt` file.
```sh
docker run -it nanda/helm-template-validator:<version> # prints help for Helm

docker run -it nanda/helm-template-validator:<version> version

docker run -it nanda/helm-template-validator:<version> template ...
```
