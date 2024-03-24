class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;

  void pushdata(int data) {
    Node newNode = Node(data);

    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void popDat() {
    if (top == null) {
      print('stack is empty');
    } else {
      top = top?.next;
    }
  }

  void display() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Stack mystack = Stack();
  mystack.pushdata(2);
  mystack.pushdata(6);
  mystack.pushdata(8);
  mystack.pushdata(3);
  mystack.pushdata(9);
  mystack.popDat();
  mystack.display();
}
