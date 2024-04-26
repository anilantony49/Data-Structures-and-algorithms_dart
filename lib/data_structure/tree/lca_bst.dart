class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value) {
    left = null;
    right = null;
  }
}

class BST {
  TreeNode? root;
  bool isEmpty() {
    return root == null;
  }

  findLCA(TreeNode? node, int n1, int n2) {
    if (node == null) return null;

    // If both n1 and n2 are smaller than root, then LCA lies in left
    if (node.value > n1 && node.value > n2) {
      return findLCA(node.left, n1, n2);
    }

    // If both n1 and n2 are greater than root, then LCA lies in right
    if (node.value < n1 && node.value < n2) {
      return findLCA(node.right, n1, n2);
    }

    // Otherwise, the current node is the LCA
    return node;
  }

  void insert(int value) {
    TreeNode node = TreeNode(value);
    if (isEmpty()) {
      root = node;
    } else {
      insertNode(root, node);
    }
  }

  void insertNode(TreeNode? root, TreeNode node) {
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
}

void main() {
  BST bst = BST();
  bst.insert(5);
  bst.insert(3);
  bst.insert(1);
  bst.insert(4);
  bst.insert(7);
  bst.insert(6);
  bst.insert(10);

  TreeNode? lca = bst.findLCA(bst.root, 1, 4);
  print(bst.root!.value);
  print("LCA(1, 4): ${lca!.value}");

  lca = bst.findLCA(bst.root, 6, 10);
  print("LCA(6, 10): ${lca!.value}");

  lca = bst.findLCA(bst.root, 3, 7);
  print("LCA(3, 7): ${lca!.value}");
}
