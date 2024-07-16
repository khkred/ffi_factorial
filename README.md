# Dart FFI for Writing C Code

Welcome to the Dart FFI project! This repository contains code and examples demonstrating how to use Dart FFI (Foreign Function Interface) to call C code from Dart.

## Overview

In this project, you'll learn how to:
- Set up your environment for using Dart FFI.
- Write and compile C code.
- Integrate and call C functions from your Dart application.

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed on your machine:
- Dart SDK
- C compiler (such as GCC for Linux/macOS or MinGW for Windows)

### Setup

1. **Clone the repository:**

    ```sh
    git clone https://github.com/khkred/ffi_factorial.git
    cd ffi_factorial
    ```

2. **Compile the C code:**

    Compile the C code into a shared library. The commands may vary depending on your operating system:

    - **Linux/macOS:**

        ```sh
        gcc -shared -o libfactorial.so factorial.c
        ```

    - **Windows:**

        ```sh
        gcc -shared -o libfactorial.dll factorial.c
        ```

3. **Run the Dart application:**

    ```sh
    dart run
    ```

## Usage

The Dart application will prompt you to enter a number to calculate its factorial using the native C function. Simply follow the on-screen instructions.

## Code Structure insde bin

- **factorial.c:** Contains the C code for calculating the factorial.
- **libfactorial.so/libfactorial.dll/libfactorial.dylib:** The compiled shared library.
- **ffi_factorial.dart:** The Dart code that uses FFI to call the C function.
- **factorial_user_input.dart:** The Dart code that asks for an user input in order to calcualte the factorial

## Contributing

Contributions are welcome! If you have any suggestions or improvements, please feel free to submit a pull request or open an issue.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Acknowledgements

Special thanks to the Dart and Flutter communities for their continuous support and inspiration.

## Author

- [Harish](https://github.com/khkred)

## Links

- [How to Use Dart FFI for Writing C Code](https://harishkunchala.com/how-to-use-dart-ffi-for-writing-c-code)

