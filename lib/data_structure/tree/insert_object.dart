class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value) {
    left = null;
    right = null;
  }
}

class BST {
  Node? root;

  bool isEmpty() {
    return root == null;
  }

  void insert(Node node) {
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
        insertNode(root.right, node);
      }
    }
  }

  void inorderTraversal(Node? node) {
    if (node != null) {
      inorderTraversal(node.left);
      print(node.value);
      inorderTraversal(node.right);
    }
  }

  void printBST() {
    inorderTraversal(root);
  }
}

void main() {
  BST bst = BST();
  bst.insert(Node(5));
  bst.insert(Node(3));
  bst.insert(Node(1));
  bst.insert(Node(4));
  bst.insert(Node(7));
  bst.insert(Node(6));
  bst.insert(Node(10));
  bst.printBST();
}
