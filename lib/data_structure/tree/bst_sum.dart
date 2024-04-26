class TreeNode {
  late int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value);
}

class BinarySearchTree {
  TreeNode? root;

  // Function to insert a value into the BST
  void insert(int value) {
    root = _insertRecursive(root, value);
  }

  TreeNode? _insertRecursive(TreeNode? node, int value) {
    if (node == null) {
      return TreeNode(value);
    }

    if (value < node.value) {
      node.left = _insertRecursive(node.left, value);
    } else if (value > node.value) {
      node.right = _insertRecursive(node.right, value);
    }

    return node;
  }

  // Function to find the sum of all node values in the BST
  int sumOfAllNodes(TreeNode? node) {
    if (node == null) {
      return 0;
    }

    int sumLeft = sumOfAllNodes(node.left); // Sum of nodes in left subtree
    int sumRight = sumOfAllNodes(node.right); // Sum of nodes in right subtree

    // Sum of nodes in current subtree = value of current node + sum of nodes in left subtree + sum of nodes in right subtree
    return node.value + sumLeft + sumRight;
  }
}

void main() {
  // Create a sample Binary Search Tree
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(10);
  bst.insert(5);
  bst.insert(15);
  bst.insert(3);
  bst.insert(7);
  bst.insert(12);
  bst.insert(18);

  // Calculate the sum of all node values in the BST
  int sum = bst.sumOfAllNodes(bst.root);
  print("Sum of all node values in the BST: $sum");
}
