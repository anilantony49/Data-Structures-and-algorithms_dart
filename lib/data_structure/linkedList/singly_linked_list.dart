void main() {
  LinkedList linkedList = LinkedList();
  linkedList.prepend(3);
  linkedList.prepend(3);
  linkedList.prepend(2);
  linkedList.prepend(1);
  linkedList.append(4);
  linkedList.append(5);
  linkedList.append(3);
  linkedList.append(7);
  linkedList.append(9);

  print('Size of linked list: ${linkedList.getSize()}');
  linkedList.insert(2, 7);
  linkedList.removeAtIndex(3);
  var searchValue = 4;
  linkedList.removeValue(searchValue);
  linkedList.search(8);
  if (linkedList.search(searchValue)) {
    print('$searchValue is found in the linked list');
  } else {
    print('$searchValue is not found in the linked list');
  }
  linkedList.reverse();
  linkedList.removeDuplicates();
  linkedList.insertAfter(2, 4); // Insert 4 after node with value 2
  linkedList.insertBefore(3, 5); // Insert 5 before node with value 3

  linkedList.printValues();
}

class Node {
  var value;
  Node? next;

  Node(this.value) {
    next = null;
    // next = null;
  }
}

class LinkedList {
  Node? head;
  var size;

  LinkedList() {
    head = null;
    size = 0;
  }

  bool isEmpty() {
    return size == 0;
  }

  int getSize() {
    return size;
  }

// prepend a value(first)
  void prepend(value) {
    var node = Node(value);
    if (isEmpty()) {
      head = node;
    } else {
      node.next = head;
      head = node;
    }
    size++;
  }
// append a value(last)

  void append(value) {
    var node = Node(value);
    if (isEmpty()) {
      head = node;
    } else {
      var current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = node;
    }
    size++;
  }

  // insert a value

  void insert(int position, dynamic value) {
    if (position < 0 || position > size) {
      print("Invalid position to insert");
      return;
    }
    if (position == 0) {
      prepend(value);
    } else {
      var node = Node(value);
      var current = head;
      for (int index = 0; index < position - 1; index++) {
        current = current!.next;
      }
      node.next = current!.next;
      current.next = node;
      size++;
    }
  }

  // remove AtIndex

  void removeAtIndex(int index) {
    if (index < 0 || index >= size) {
      print("Invalid index for removal");
      return;
    }

    if (index == 0) {
      head = head!.next;
    } else {
      var current = head;
      for (int currentIndex = 0; currentIndex < index - 1; currentIndex++) {
        current = current!.next;
      }
      current!.next = current.next!.next;
    }
    size--;
  }

  // remove a value

  removeValue(dynamic value) {
    if (isEmpty()) {
      return null;
    }
    if (head!.value == value) {
      head = head!.next;
      size--;
      return value;
    } else {
      var current = head;
      while (current!.next != null && current.next!.value != value) {
        current = current.next;
      }
      if (current.next != null) {
        var removedNode = current.next;
        current.next = removedNode!.next;
        size--;
        return value;
      }
      return null;
    }
  }

  // search a value

  search(dynamic value) {
    if (isEmpty()) {
      return -1;
    }
    var i = 0;
    var current = head;
    while (current != null) {
      if (current.value == value) {
        return i;
      }
      current = current.next;
      i++;
    }
    return -1;
  }

  // reverse the list

  void reverse() {
    if (isEmpty() || head!.next == null) {
      return;
    }

    Node? prev;
    Node? current = head;
    Node? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    head = prev;
  }

//  remove duplicate elements

  void removeDuplicates() {
    if (isEmpty() || head!.next == null) {
      return;
    }

    var current = head;
    while (current != null) {
      var runner = current;
      while (runner.next != null) {
        if (runner.next!.value == current.value) {
          runner.next = runner.next!.next;
          size--;
        } else {
          runner = runner.next!;
        }
      }
      current = current.next;
    }
  }

  // Insert a node after & before a node with x data

  void insertAfter(dynamic x, dynamic value) {
    var node = Node(value);
    var current = head;
    while (current != null) {
      if (current.value == x) {
        node.next = current.next;
        current.next = node;
        size++;
        return;
      }
      current = current.next;
    }
    print("$x not found in the linked list");
  }

  void insertBefore(dynamic x, dynamic value) {
    var node = Node(value);
    if (head == null) {
      print("Linked list is empty");
      return;
    }
    if (head!.value == x) {
      node.next = head;
      head = node;
      size++;
      return;
    }
    var current = head;
    while (current!.next != null) {
      if (current.next!.value == x) {
        node.next = current.next;
        current.next = node;
        size++;
        return;
      }
      current = current.next;
    }
    print("$x not found in the linked list");
  }

  void printValues() {
    if (isEmpty()) {
      print("Linked List is empty");
      return;
    }
    var current = head;
    print("Values in the linked list:");
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}
