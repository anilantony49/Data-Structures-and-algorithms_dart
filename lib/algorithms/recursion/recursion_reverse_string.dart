String reverseString(String str) {
  // Base case: if the string is empty or has only one character, it's already reversed
  if (str.isEmpty || str.length == 1) {
    return str;  
  }
  
  // Recursive step: reverse the substring from the second character to the end,
  // then append the first character to the reversed substring
  return reverseString(str.substring(1)) + str[0];
}

void main() {
  String originalString = "Hello";
  String reversedString = reverseString(originalString);
  print("Original string: $originalString");
  print("Reversed string: $reversedString");
}
