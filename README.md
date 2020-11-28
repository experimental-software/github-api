# GitHub API

A commandline client and Dart library for access on the GitHub API.

## Getting started

Here is how you can use the GitHub API on Linux and MacOS:

```
curl -L https://github.com/experimental-software/github-api/releases/download/latest/github-api_$(uname) \
  > github-api
chmod +x github-api
./github-api
```

## Compile project

```
mkdir build/
dart2native bin/github_api.dart -o build/github-api
```

## Release

When a new version tag is pushed, a new release of `github-api` is automatically created via GitHub Actions for Linux, MacOS, and Windows.

## References

- https://developer.github.com/v3/
- https://git-scm.com/book/en/v2/Git-Basics-Tagging
