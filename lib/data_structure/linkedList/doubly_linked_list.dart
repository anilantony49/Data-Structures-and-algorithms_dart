void main() {
  DoublyLinkedList linkedList = DoublyLinkedList();
  linkedList.prepend(3);
  linkedList.prepend(3);
  linkedList.prepend(3);
  linkedList.prepend(3);
  linkedList.prepend(3);
  print('Size of linked list: ${linkedList.getSize()}');
  linkedList.printValues();
}

class Node {
  var value;
  Node? prev;
  Node? next;

  Node(this.value) {
    prev = null;
    next = null;
  }
}

class DoublyLinkedList {
  Node? head;
  Node? tail;
  var size;

  DoublyLinkedList() {
    head = null;
    tail = null;
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
      tail = node;
    } else {
      node.next = head;
      head!.prev = node;
      head = node;
    }
    size++;
  }

// append a value(last)
  void append(value) {
    var node = Node(value);
    if (isEmpty()) {
      head = node;
      tail = node;
    } else {
      tail!.next = node;
      node.prev = tail;
      tail = node;
    }
    size++;
  }

// insert a value
  void insertAtIndex(int position, dynamic value) {
    if (position < 0 || position > size) {
      print("Invalid index for insertion");
      return;
    }
    if (position == 0) {
      prepend(value);
    } else if (position == size) {
      append(value);
    } else {
      var node = Node(value);
      var current = head;
      for (int index = 0; index < position - 1; index++) {
        current = current!.next;
      }
      node.next = current!.next;
      node.prev = current;
      current.next!.prev = node;
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
      if (head != null) {
        head!.prev = null;
      } else {
        tail = null;
      }
    } else if (index == size - 1) {
      tail = tail!.prev;
      tail!.next = null;
    } else {
      var current = head;
      var currentIndex = 0;
      while (currentIndex < index) {
        current = current!.next;
        currentIndex++;
      }
      current!.prev!.next = current.next;
      current.next!.prev = current.prev;
    }
    size--;
  }

// remove a value
  void removeValue(dynamic value) {
    if (isEmpty()) {
      print("Doubly linked list is empty");
      return;
    }

    var current = head;
    while (current != null) {
      if (current.value == value) {
        if (current == head) {
          head = current.next;
          if (head != null) {
            head!.prev = null;
          } else {
            tail = null;
          }
        } else if (current == tail) {
          tail = tail!.prev;
          tail!.next = null;
        } else {
          current.prev!.next = current.next;
          current.next!.prev = current.prev;
        }
        size--;
        return;
      }
      current = current.next;
    }

    print("$value not found in the linked list");
  }

  // search a value
  bool search(dynamic value) {
    if (isEmpty()) {
      return false;
    }

    var current = head;
    while (current != null) {
      if (current.value == value) {
        return true;
      }
      current = current.next;
    }
    return false;
  }

  // reverse the list
  void reverse() {
    if (isEmpty() || head == tail) {
      return; // No need to reverse
    }

    Node? current = head;
    Node? temp;

    while (current != null) {
      // Swap the prev and next pointers of the current node
      temp = current.prev;
      current.prev = current.next;
      current.next = temp;

      // Move to the next node
      current = current.prev;

      // If current is not null, it means we have reached the end of the reversed list
      // and current is now the new head
      if (current != null && current.next == null) {
        head = current;
      }
    }
  }

//  remove duplicate elements
  void removeDuplicates() {
    if (isEmpty() || head == tail) {
      return; // No duplicates to remove
    }

    var current = head;
    var uniqueElements = <dynamic>{
      current!.value
    }; // Set to store unique elements

    while (current != null) {
      if (uniqueElements.contains(current.value)) {
        // Duplicate found, remove the node
        var nextNode = current.next;
        if (current == head) {
          head = nextNode;
          if (nextNode != null) {
            nextNode.prev = null;
          }
        } else if (current == tail) {
          tail = current.prev;
          tail!.next = null;
        } else {
          current.prev!.next = current.next;
          current.next!.prev = current.prev;
        }
        size--;
      } else {
        uniqueElements.add(current.value);
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
        if (current == tail) {
          tail!.next = node;
          node.prev = tail;
          tail = node;
        } else {
          node.next = current.next;
          current.next!.prev = node;
          current.next = node;
          node.prev = current;
        }
        size++;
        return;
      }
      current = current.next;
    }
    print("$x not found in the linked list");
  }

  void insertBefore(dynamic x, dynamic value) {
    var node = Node(value);
    var current = head;
    while (current != null) {
      if (current.value == x) {
        if (current == head) {
          node.next = head;
          head!.prev = node;
          head = node;
        } else {
          node.prev = current.prev;
          current.prev!.next = node;
          current.prev = node;
          node.next = current;
        }
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
