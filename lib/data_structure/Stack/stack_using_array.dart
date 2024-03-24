class Stack {
  late List<dynamic> items;

  Stack() {
    items = [];
  }

  void push(dynamic element) {
    items.add(element);
  }

  dynamic pop() {
    if (isEmpty()) {
      return null;
    }
    return items.removeLast();
  }

  dynamic peek() {
    if (!isEmpty()) {
      return items[items.length - 1];
    }
    return null;
  }

  bool isEmpty() {
    return items.isEmpty;
  }

  int size() {
    return items.length;
  }

  void printStack() {
    print(items.toString());
  }
}

void main() {
  Stack stack = Stack();
  print(stack.isEmpty());
  stack.push(20);
  stack.push(10);
  stack.push(30);
  print(stack.size());
  stack.printStack();
  print(stack.pop());
  print(stack.peek());
  stack.printStack();
}

  // Big-O - O(n)