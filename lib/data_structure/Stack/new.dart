class Queue {
  late Map<int, dynamic> items;
  late int front;
  late int rear;
  Queue() {
    items = {};
    front = 0;
    rear = 0;
  }

  enqueue(int element) {
    items[rear] = element;
    rear++;
  }

  dequeue(){
    var item = items[front];
    items.remove(front);
    front++;
    return item;
  }

  peek(){
    return items[front];
  }

  int size(){
    return rear-front;
  }
  prnt(){
    print(items);
  }
}
