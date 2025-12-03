# Devcontainer Features for Databricks 

[![Tests](https://github.com/KingBain/devcontainer-features-databricks/actions/workflows/test.yaml/badge.svg)](https://github.com/KingBain/devcontainer-features-databricks/actions/workflows/test.yaml)

This repository contains my custom Dev Container Features.

You can learn more about Features at [https://containers.dev/implementors/features/](https://containers.dev/implementors/features/).

## Features

| Feature                                | Description                                                                        |
| -------------------------------------- | ---------------------------------------------------------------------------------- |
| [databricks-cli](./src/databricks-cli) | Installs the Databricks CLI in your dev container using the official setup script. |

## Usage

To reference a Feature from this repository, add it to your `devcontainer.json`. Each Feature has a `README.md` under its folder with details and options (if any).

Example using the `databricks-cli` feature:

```jsonc
{
  "name": "my-project-devcontainer",
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "features": {
    "ghcr.io/KingBain/devcontainer-features-databricks/databricks-cli:0.0.1": {}
  }
}
```
