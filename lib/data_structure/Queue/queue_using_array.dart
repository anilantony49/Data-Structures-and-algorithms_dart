class Queue {
  late List<dynamic> items;

  Queue() {
    items = [];
  }

  void enqueue(dynamic element) {
    items.add(element);
  }

  dynamic dequeue() {
    if (isEmpty()) {
      return null;
    }
    return items.removeAt(0);
  }

  dynamic peek() {
    if (!isEmpty()) {
      return items[0];
    }
    return null;
  }

  bool isEmpty() {
    return items.isEmpty;
  }

  int size() {
    return items.length;
  }

  void printQueue() {
    print(items.toString());
  }
}

void main() {
  Queue queue = Queue();
  print(queue.isEmpty());
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  // queue.size();
  print(queue.size());
  queue.printQueue();
  print(queue.dequeue());
  print(queue.peek());
  queue.printQueue();
}

// Big-O- o(n)
