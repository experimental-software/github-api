# GitHub API

A commandline client and Dart library for access on the GitHub API.

## Getting started

Here is how you can use the GitHub API on Ubuntu:

```
curl -L https://github.com/experimental-software/github-api/releases/download/latest/github-api > github-api
chmod +x github-api
./github-api
```

## Compile project

```
mkdir build/
dart2native bin/github_api.dart -o build/github-api
```

## References

- https://developer.github.com/v3/
