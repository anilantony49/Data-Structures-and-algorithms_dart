class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value) {
    left = null;
    right = null;
  }
}

class Bst {
  Node? root;

  bool isEmpty() {
    return root == null;
  }

  void insert(int value) {
    Node node = Node(value);
    if (isEmpty()) {
      root = node;
    } else {
      insertNode(root, node);
    }
  }

  void insertNode(Node? root, Node node) {
    if (node.value < root!.value) {
      if (root.left == null) {
        root.left = node;
      } else {
        insertNode(root.left, node);
      }
    } else {
      if (root.right == null) {
        root.right = node;
      } else {
        insertNode(root.left, node);
      }
    }
  }

  int sumOfAllNodes(Node? root) {
    if (isEmpty()) {
      return 0;
    }
    int left = sumOfAllNodes(root!.left);
    int right = sumOfAllNodes(root.right);

    return root.value + left + right;
  }
}
