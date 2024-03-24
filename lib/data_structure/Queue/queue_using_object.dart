class Queue {
  late Map<int, dynamic> items;
  late int front;
  late int rear;

  Queue() {
    items = {};
    front = 0;
    rear = 0;
  }

  void enqueue(dynamic element) {
    items[rear] = element;
    rear++;
  }

  dynamic dequeue() {
    dynamic item = items[front];
    items.remove(front);
    front++;
    return item;
  }

  dynamic peek() {
    return items[front];
  }

  int size() {
    return rear - front;
  }

  bool isEmpty() {
    return rear - front == 0;
  }

  void printQueue() {
    print(items);
  }
}

void main() {
  Queue queue = Queue();
  print(queue.isEmpty());
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  print(queue.size());
  queue.printQueue();
  print(queue.dequeue());
  print(queue.peek());
  print(queue.isEmpty());
  queue.printQueue();
}

// Big-O -o(1)
