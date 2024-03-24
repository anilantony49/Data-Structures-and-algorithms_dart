class Stack {
 late Map<int, dynamic> items;
 late int head;

  Stack() {
    items = {};
    head = 0;
  }

  void push(dynamic element) {
    items[head] = element;
    head++;
  }

  dynamic pop() {
    final item = items[head - 1];
    items.remove(head - 1);
    head--;
    return item;
  }

  dynamic peek() {
    return items[head - 1];
  }

  int size() {
    return head;
  }

  bool isEmpty() {
    return head == 0;
  }

  void printStack() {
    print(items);
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

  // Big-O - O(1)