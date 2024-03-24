class StackUsingQueue {
  List<int> queue1 = [];
  List<int> queue2 = [];
  late int topElement;

  void push(int item) {
    queue2.add(item); // Add the new element to queue2

    // Move all elements from queue1 to queue2
    while (queue1.isNotEmpty) {
      queue2.add(queue1.removeAt(0));
    }

    // Swap the queues to maintain the top element
    var temp = queue1;
    queue1 = queue2;
    queue2 = temp;

    topElement = item; // Update the top element
  }

  // Big-O - O(n)

  int pop() {
    if (isEmpty()) {
      print("Stack is empty");
    }
    int popped = queue1.removeAt(0); // Remove the top element
    if (queue1.isNotEmpty) {
      topElement = queue1.first; // Update the top element
    }
    return popped;
  }

// Big-O - O(1)
  int peek() {
    if (isEmpty()) {
      print("Stack is empty");
    }
    return topElement; // Return the top element
  }

  bool isEmpty() {
    return queue1.isEmpty;
  }

  void displayElements() {
    if (isEmpty()) {
      print("Stack is empty");
      return;
    }
    print("Elements in the stack:");
    for (var element in queue1) {
      print(element);
    }
  }
}
// Big-O - O(1)

void main() {
  StackUsingQueue stack = StackUsingQueue();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.displayElements();
  print(stack.pop()); // Output: 30
  print(stack.peek()); // Output: 20
}

// Big-O - O(n)
