# C++ Project Template

This repository serves as a template for modern C++ projects, incorporating tools for code formatting, linting, and maintaining consistent coding standards.

## Setting Up Your Development Environment

To set up your local development environment, follow these steps:

1. **Install pre-commit**:
   - `pre-commit` is used to run checks before each commit. Install it using pip:
     ```bash
     pip install pre-commit
     ```

2. **Install clang-format**:
   - `clang-format` is used for formatting C++ code. Install it using apt:
     ```bash
     apt install clang-format
     ```

3. **Install clang-tidy**:
   - `clang-tidy` performs linting and static analysis on C++ code. Install it using apt:
     ```bash
     apt install clang-tidy
     ```

4. **Install cmake-format**:
   - `cmake-format` is used for formatting CMake files. Install it using pip:
     ```bash
     pip install cmakelang
     ```

5. **Install Flake8** (optional):
   - If your project includes Python scripts, install `Flake8` for linting Python code:
     ```bash
     pip install flake8
     ```

6. **Initialize pre-commit in Your Repository**:
   - Run the following command in your repository to set up the pre-commit hooks:
     ```bash
     pre-commit install
     ```

### Running Tools Manually

You can also run these tools manually:

- **clang-format**:
  Format a single file:
  ```bash
  clang-format -i path/to/your/file.cpp
  ```

- **clang-tidy**:
  Check a single file:
  ```bash
  clang-tidy path/to/your/file.cpp -- -Iinclude
  ```

- **cmake-format**:
  Format a CMake file:
  ```bash
  cmake-format -i path/to/your/CMakeLists.txt
  ```

- **Flake8**:
  Lint a Python file:
  ```bash
  flake8 path/to/your/script.py
  ```

## GitHub Actions CI/CD

This project uses GitHub Actions for Continuous Integration and Continuous Deployment (CI/CD). The following automated workflows are set up:

1. **Code Formatting (`format.yml`)**: Checks if the code conforms to the defined formatting standards using `clang-format`.

2. **Linting (`lint.yml`)**: Performs static code analysis using `clang-tidy` to identify potential issues in the C++ source files.

3. **Building (`build.yml`)**: Compiles the project to ensure that the build process is successful.

4. **Testing (`test.yml`)**: TBD.

### Workflow Details

- Each workflow is triggered on push and pull requests to the `main`|`master` branches.
- Workflows are defined in the `.github/workflows` directory, with separate files for formatting, linting, building, and testing (soon).
- These workflows ensure code quality and build integrity with every commit and pull request.

## GitHub Codespaces Configuration

This project is configured to be used with GitHub Codespaces, providing a fully setup development environment with all the necessary tools pre-installed.

### Features

- Pre-configured C++ development environment.
- Integrated tools like `clang-format`, `clang-tidy`, and `cmake`.
- Automatic setup for `pre-commit` and other dependencies.

### Getting Started

To start using GitHub Codespaces:

1. Go to the GitHub repository page.
2. Click on the 'Code' button and select 'Open with Codespaces'.
3. Choose to create a new codespace. This will set up the environment as per the configuration in `.devcontainer/devcontainer.json`.

### Customizing the Environment

- The development environment is defined in the `.devcontainer` folder.
- `devcontainer.json` specifies the Docker image, installed extensions, and post-create commands.
- You can modify these files to customize the Codespaces environment to better suit your project's needs.
