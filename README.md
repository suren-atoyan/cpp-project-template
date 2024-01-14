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
