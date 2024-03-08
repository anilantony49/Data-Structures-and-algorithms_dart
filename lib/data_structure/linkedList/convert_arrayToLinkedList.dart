class Node {
  var data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void linkedList(List<dynamic> array) {
    if (array.isNotEmpty) {
      head = Node(array[0]);
      var current = head;
      for (var i = 1; i < array.length; i++) {
        current!.next = Node(array[i]);
        current = current.next;
      }
    }
  }

  void display() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  var array = [1, 2, 3, 4, 5];

  var linkedList = LinkedList();
  linkedList.linkedList(array);
  linkedList.display();
}
