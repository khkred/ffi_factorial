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

  // 4. Call the Native Function (from Dart)
  final result = nativeFactorialMemo(5);
  print('Factorial of 5 is: $result'); // Output: 120
}
