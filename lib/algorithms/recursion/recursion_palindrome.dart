bool isPalindrome(String str) {


  // Base case: if the string is empty or has only one character, it's a palindrome
  if (str.length <= 1) {
    return true;
  }
  
  // Check if the first and last characters are the same
  if (str[0] != str[str.length - 1]) {
    return false;
  }
  
  // Recursive case: remove the first and last characters, and check the remaining substring
  return isPalindrome(str.substring(1, str.length - 1));
}

void main() {
  print(isPalindrome("radar")); // Output: true
  print(isPalindrome("hello")); // Output: false
}
 