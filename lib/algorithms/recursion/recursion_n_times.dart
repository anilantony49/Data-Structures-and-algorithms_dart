void main() {
  repeatFunction(5);
}

void repeatFunction(int n) {
  if (n > 0) {
    print('Hello, world!');
    // func(); // Call the function
    repeatFunction(n - 1); // Recursive call with decremented count
  }
}
