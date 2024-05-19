# Data Port

![GitHub issues](https://img.shields.io/github/issues/dayvidwhy/data-port)
![GitHub pull requests](https://img.shields.io/github/issues-pr/dayvidwhy/data-port)
![GitHub](https://img.shields.io/github/license/dayvidwhy/data-port)

Data Port provides an easy to use file upload endpoint to store anything.

## Prerequisites

Before you begin, ensure you have the following installed:
- Docker
- Git

## Getting Started

The development environment is provided by containers.

```bash
git clone git@github.com:dayvidwhy/data-port.git
cd data-port
docker-compose up --build
docker exec -it data-port-app bash
swift run
```

Re-run `swift run` on each change.

Server will be available at `localhost:8080` on your machine.

## VSCode Integration
For an optimized development experience, attach VSCode to the running insights-app container:

1. Use the command palette (Ctrl+Shift+P or Cmd+Shift+P on Mac) and select: `>Dev Containers: Attach to Running Container...`
2. Choose /data-port-app from the list.
