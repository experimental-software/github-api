# GitHub API

A commandline client and Dart library for access on the GitHub API.

## Getting started

### With Dart

```
pub get
dart pub global activate --source path .
```

### Without Dart

Here is how you can use the GitHub API on Linux and MacOS:

```bash
curl -L https://github.com/experimental-software/github-api/releases/download/latest/github-api_$(uname) \
  > github-api
chmod +x github-api
./github-api
```

## Usage

### Unauthenticated requests

```
github-api GET /repos/experimental-software/github-api
```

### Authenticated requests

```
export GITHUB_USERNAME=jdoe
export GITHUB_TOKEN=*******************
github-api GET /repos/experimental-software/private-project
```

## Compile project

If you want to build the project locally, you can do so like this:

```bash
mkdir build/
dart2native bin/main.dart -o build/github-api
```

## Release

When a new Git tag is pushed, a new release of `github-api` is automatically created via GitHub Actions for Linux, MacOS, and Windows.

```bash
RELEASE_VERSION=0.1.0
TAG_NAME=v${RELEASE_VERSION}
git tag ${TAG_NAME}
git push upstream ${TAG_NAME}
```

## References

- https://docs.github.com/en/free-pro-team@latest/rest
- https://git-scm.com/book/en/v2/Git-Basics-Tagging
