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
        insertNode(root.right, node);
      }
    }
  }

  int sumOfAllNodes(Node? root) {
    if (root == null) {
      return 0;
    }

    int sumLeft = sumOfAllNodes(root.left); // Sum of nodes in left subtree
    int sumRight = sumOfAllNodes(root.right); // Sum of nodes in right subtree

    // Sum of nodes in current subtree = value of current node + sum of nodes in left subtree + sum of nodes in right subtree
    return root.value + sumLeft + sumRight;
  }

  bool search(Node? root, int value) {
    if (root == null) {
      return false;
    } else {
      if (root.value == value) {
        return true;
      } else if (value < root.value) {
        return search(root.left, value);
      } else {
        return search(root.right, value);
      }
    }
  }

  void preOrder(Node? root) {
    if (root != null) {
      print(root.value);
      preOrder(root.left);
      preOrder(root.right);
    }
  }

  void inOrder(Node? root) {
    if (root != null) {
      inOrder(root.left);
      print(root.value);
      inOrder(root.right);
    }
  }

  void postOrder(Node? root) {
    if (root != null) {
      postOrder(root.left);
      postOrder(root.right);
      print(root.value);
    }
  }

  void levelOrder() {
    List<Node?> queue = [];
    queue.add(root);
    while (queue.isNotEmpty) {
      Node? curr = queue.removeAt(0);
      print(curr!.value);
      if (curr.left != null) {
        queue.add(curr.left);
      }
      if (curr.right != null) {
        queue.add(curr.right);
      }
    }
  }

  int min(Node? root) {
    if (root!.left == null) {
      return root.value;
    } else {
      return min(root.left);
    }
  }

  int max(Node? root) {
    if (root!.right == null) {
      return root.value;
    } else {
      return max(root.right);
    }
  }

  Node? delete(int value) {
    return deleteNode(root, value);
  }

  Node? deleteNode(Node? root, int value) {
    if (root == null) {
      return root;
    } else {
      if (value < root.value) {
        root.left = deleteNode(root.left, value);
      } else if (value > root.value) {
        root.right = deleteNode(root.right, value);
      } else {
        if (root.left == null && root.right == null) {
          return null;
        }
        if (root.left == null) {
          return root.right;
        } else if (root.right == null) {
          return root.left;
        }
        root.value = min(root.right);
        root.right = deleteNode(root.right, root.value);
      }
      //  print(root.value);
      return root;
    }
  }

  bool isValidBST(Node? root, dynamic minValue, dynamic maxValue) {
    if (root == null) {
      return true;
    }
    if (root.value <= minValue || root.value >= maxValue) {
      return false;
    }
    return isValidBST(root.left, minValue, root.value) &&
        isValidBST(root.right, root.value, maxValue);
  }

  findClosetValue(dynamic target) {
    if (root == null) {
      print('Tree is empty');
    }
    int closest = root!.value;
    Node? current = root;
    while (current != null) {
      if ((current.value - target).abs() < (closest - target).abs()) {
        closest = current.value;
      }
      if (target < current.value) {
        current = current.left;
      } else if (target > current.value) {
        current = current.right;
      } else {
        break;
      }
    }
    return closest;
  }
}

void main() {
  // Node root = Node(5);
  BST bst = BST();
  bst.insert(5);
  bst.insert(3);
  bst.insert(1);
  bst.insert(4);
  bst.insert(7);
  bst.insert(6);
  bst.insert(10);
  // bst.insert(14);
  // bst.insert(13);

  // print('SEARCH:');
  // print(bst.search(bst.root, 9));

  // print('PREORDER:');
  // bst.preOrder(bst.root);

  // print('INORDER:');
  // bst.inOrder(bst.root);

  // print('POSTORDER:');
  // bst.postOrder(bst.root);

  // print(bst.sumOfAllNodes(bst.root));

  // print('LEVELORDER:');
  // bst.levelOrder();

  // print('MIN:');
  // print(bst.min(bst.root));

  // print('MAX:');
  // print(bst.max(bst.root));

  // bst.levelOrder();
  bst.delete(10);
  bst.levelOrder();
  // print(bst.findClosetValue(3));

  // print(bst.isValidBST(bst.root, double.negativeInfinity, double.infinity));
}
