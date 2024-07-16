import 'dart:ffi';
import 'dart:io';

// 2. Define FFI Function Signature
typedef NativeFactorialMemoFunc = Int32 Function(Int32 n);
typedef DartFactorialMemoFunc = int Function(int n);

void main(List<String> arguments) {

  // 1. Load the Dynamic Library (dylib)
  // Ensure to use the correct extension for your platform (.dll for Windows, .dylib for macOS, .so for Linux)
  final dylib = Platform.isWindows
      ? DynamicLibrary.open('libfactorial.dll')
      : Platform.isMacOS
          ? DynamicLibrary.open('libfactorial.dylib')
          : DynamicLibrary.open('libfactorial.so'); // Linux

  // 3. Look Up the Native Function
  final DartFactorialMemoFunc nativeFactorialMemo =
      dylib.lookupFunction<NativeFactorialMemoFunc, DartFactorialMemoFunc>('factorial_memo');

  // Get user input
  print('Enter a number to calculate its factorial: ');
  final input = stdin.readLineSync();

  if (input != null) {
    final number = int.tryParse(input);
    if (number != null) {
      // 4. Call the Native Function (from Dart)
      final result = nativeFactorialMemo(number);
      print('Factorial of $number is: $result'); // Output: 120 (for 5)
    } else {
      print('Please enter a valid integer.');
    }
  } else {
    print('Input cannot be null.');
  }
}
