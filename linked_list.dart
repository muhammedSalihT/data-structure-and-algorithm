class Node {
  int? data;
  Node? next;
  Node({this.data});
}

class LinkedListOperations {
  Node? head = null;
  Node? tail = null;
  Node? temp = null;

  addData(int data) {
    Node newData = Node(data: data);

    if (head == null) {
      head = newData;
    } else {
      tail!.next = newData;
    }
    tail = newData;
  }

  deleteData(int data) {
    temp = head;
    while (temp != null && temp!.data == data) {
      if (temp!.data == head!.data) {
        head = temp!.next;
      }
    }
    print("$data,is not in here!!!");
  }

  displayData() {
    temp = head;
    if (temp == null) {
      print("empty");
      return;
    }
    while (temp != null) {
      print(temp!.data);
      temp = temp!.next;
    }
  }
}

void main() {
  LinkedListOperations obj = LinkedListOperations();
  obj.addData(20);
  obj.addData(20);
  obj.displayData();
  obj.deleteData(20);
  obj.displayData();
  // obj.removeNode();
  // obj.displayData();
}
