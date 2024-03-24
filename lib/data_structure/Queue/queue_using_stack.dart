class QueueUsingStack {
  List<int> stack1 = [];
  List<int> stack2 = [];

  void enqueue(int item) {
    stack1.add(item);
  }
  // Big-O - O(1)

  int dequeue() {
    if (isEmpty()) {
      print("Queue is empty");
    }
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.removeLast();
  }

  // Big-O - O(n)

  int peek() {
    if (isEmpty()) {
      print("Queue is empty");
    }
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.last;
  }

  // Big-O - O(n)
  bool isEmpty() {
    return stack1.isEmpty && stack2.isEmpty;
  }

  void displayElements() {
    if (isEmpty()) {
      print("queue is empty");
      return;
    }
    print("Elements in the queue:");
    for (var element in stack2) {
      print(element);
    }
  }
}

void main() {
  QueueUsingStack queue = QueueUsingStack();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);

  print(queue.dequeue()); // Output: 10
  print(queue.peek()); // Output: 20
}

    // Big-O - O(n)
