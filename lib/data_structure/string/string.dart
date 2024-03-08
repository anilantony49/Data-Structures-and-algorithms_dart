void main() {
  String myString = "Hello, World!";
  print("Index of 'o' in the string: ${findCharIndex(myString, 'o')}");
  String newString = concatenateStrings(myString, 'How are you?');
  print('Concatenated String: $newString');

  String reversedString = reverseString(myString);
  print('Reversed String: $reversedString');

  String lowerCaseString = toLowerCase(myString);
  print('Lowercased String: $lowerCaseString');
  String upperCaseString = toUpperCase(myString);
  print("Uppercased String: $upperCaseString");
  print("$myString is palindrome: ${isPalindrome(myString)}");
}

findCharIndex(String str, String char) {
  for (int i = 0; i < str.length; i++) {
    if (str[i] == char) {
      return i;
    }
  }
  return -1;
}

concatenateStrings(String str1, String str2) {
  return str1 + str2;
}

reverseString(String str) {
  String reversed = "";
  for (int i = str.length - 1; i >= 0; i--) {
    reversed = reversed + str[i];
  }
  return reversed;
}

toLowerCase(String str) {
  String lowerCased = '';
  for (int i = 0; i < str.length; i++) {
    lowerCased = lowerCased + str[i].toLowerCase();
  }
  return lowerCased;
}

toUpperCase(String str) {
  String upperCase = '';
  for (int i = 0; i < str.length; i++) {
    upperCase = upperCase + str[i].toUpperCase();
  }
  return upperCase;
}

bool isPalindrome(String str) {
  // Convert the string to lowercase to handle case-insensitive palindrome check
  str = str.toLowerCase();

  // Define the start and end indices
  int start = 0;
  int end = str.length - 1;

  // Iterate until start index is less than end index
  while (start < end) {
    // If characters at start and end indices don't match, return false
    if (str[start] != str[end]) {
      return false;
    }
    // Move to the next pair of characters
    start++;
    end--;
  }
  // If the loop completes without returning false, the string is a palindrome
  return true;
}
