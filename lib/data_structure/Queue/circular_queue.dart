class CircularQueue {
  late List<dynamic> items;
  late int rear;
  late int front;
  late int currentLength;
  late int capacity;

  CircularQueue(this.capacity) {
    items = List<dynamic>.filled(capacity, null);
    rear = -1;
    front = -1;
    currentLength = 0;
  }

  bool isFull() {
    return currentLength == capacity;
  }

  bool isEmpty() {
    return currentLength == 0;
  }

  int size() {
    return currentLength;
  }

  void enqueue(dynamic item) {
    if (!isFull()) {
      rear = (rear + 1) % capacity;
      items[rear] = item;
      currentLength ++;
      if (front == -1) {
        front = rear;
      }
    }
  }

  dynamic dequeue() {
    if (isEmpty()) {
      return null;
    }
    dynamic item = items[front];
    items[front] = null;
    front = (front + 1) % capacity;
    currentLength --;
    if (isEmpty()) {
      front = -1;
      rear = -1;
    }
    return item;
  }

  dynamic peek() {
    if (!isEmpty()) {
      return items[front];
    }
    return null;
  }

  void printQueue() {
    if (isEmpty()) {
      print("Queue is empty");
    } else {
      String str = "";
      for (int i = front; i != rear; i = (i + 1) % capacity) {
        str += "${items[i]} ";
      }
      str += "${items[rear]}";  
      print(str);
    }
  }
}

void main() {
  CircularQueue queue = CircularQueue(5);
  print(queue.isEmpty());
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.enqueue(40);
  queue.enqueue(50);
  print(queue.size());
  queue.printQueue();
  print(queue.isFull());
  print(queue.dequeue());
  print(queue.peek());
  queue.printQueue();
  queue.enqueue(60);
  queue.printQueue();
}

//Big-O -  O(1)
