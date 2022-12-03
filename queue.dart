class Node {
  int data;
  Node? next;
  Node({required this.data});
}

class Queue {
  Node? front = null;
  Node? rear = null;

  enQueue(int data) {
    Node newNode = Node(data: data);

    if (rear == null) {
      front = newNode;
      rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  deQueue() {
    if (front == null) {
      print("empty");
    }
    front = front!.next;
    if (front == null) {
      rear = null;
    }
  }

  display() {
    if (front == null) {
      print("empty");
      return;
    }
    var temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enQueue(4);
  queue.enQueue(10);
  queue.enQueue(15);
  queue.enQueue(5);
  queue.display();
  print('object');
  queue.deQueue();
  queue.display();
}
