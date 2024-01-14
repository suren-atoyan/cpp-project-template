FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-focal

# Install system dependencies
RUN apt-get update \
  && apt-get install -y \
  python3-pip \
  clang-format \
  clang-tidy \
  && rm -rf /var/lib/apt/lists/*

# Install Python-based tools
RUN pip3 install pre-commit cmakelang
