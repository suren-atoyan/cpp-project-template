FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-focal

# Install additional packages.
RUN apt-get update \
  && apt-get install -y clang-format clang-tidy && pip install pre-commit cmakelang
