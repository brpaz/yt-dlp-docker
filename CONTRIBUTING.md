# Contributing

## Setup your local environment

### Pre-requisites

- You must have Docker and Git installed on your system.

### Clone the repository

The first step is to clone the project repository.

```shell
git clone https://github.com/brpaz/yt-dlp-docker
cd yt-dlp-docker
```

### Install devbox

This project requires a couple of dev tools, for a streamlined developer experience, like:

- [Task](https://taskfile.dev/) - Task runner. A modern alternative to make
- [lefthook](https://github.com/evilmartians/lefthook) - Fast and powerful Git hooks manager for any type of projects.
- [hadolint](https://github.com/hadolint/hadolint) -  Dockerfile linter, validate inline bash-
- [GoogleContainerTools/container-structure-test](https://github.com/GoogleContainerTools/container-structure-test) - validate the structure of your container images
- [Trivy](https://trivy.dev/) - The all-in-one open source security scanner

Some tools like container-structure-tests and trivy are configured be be run using docker. Task, Hadolint and Lefthook, you should install these locally.

The recommended way is to use [Devbox](https://www.jetpack.io/devbox), to create a isolated development envrionment, based on Nix.

To install devbox run:

```bash
curl -fsSL https://get.jetpack.io/devbox | bash
```

Then you can run `devbox shell` which will create a nix envrionment, containing the base tools required by this project.

