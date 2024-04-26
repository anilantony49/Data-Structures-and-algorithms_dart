class Node {
  int val;
  Node? left;
  Node? right;

  Node(this.val);
}

// int findNthLowest(TreeNode? root, int n) {
//   // Counter to keep track of visited nodes
//   var count = 0;

//   // Stack to perform iterative in-order traversal
//   List<TreeNode> stack = [];

//   var current = root;

//   while (current != null || stack.isNotEmpty) {
//     // Traverse left subtree
//     while (current != null) {
//       stack.add(current);
//       current = current.left;
//     }

//     // Visit the current node
//     current = stack.removeLast();
//     count++;

//     // Check if we've reached the nth node
//     if (count == n) {
//       return current.val;
//     }

//     // Traverse right subtree
//     current = current.right;
//   }

//   // If nth lowest element is not found
//   return -1; // Or throw an exception, depending on your requirements
// }

findNthLowest(Node? root, int n) {
  int count = 0;

  List<Node> stack = [];

  Node? current = root;

  while (current != null || stack.isNotEmpty) {
    while (current != null) {
      stack.add(current);
      current = current.left;
    }
    current = stack.removeLast();
    count++;
    if (count == n) {
      return current.val;
    }

    current = current.right;
  }
  return -1;
}

void main() {
  // Example usage:

  // Node node = Node(5);

  var root = Node(5);
  root.left = Node(3);
  root.right = Node(8);
  root.left!.left = Node(2);
  root.left!.right = Node(4);
  root.right!.left = Node(7);
  root.right!.right = Node(9);

  var n = 2; // Find the 3rd lowest number
  var nthLowest = findNthLowest(root, n);
  print('The $n-th lowest number is: $nthLowest'); // Output should be 4
}
