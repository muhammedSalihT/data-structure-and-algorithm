import 'dart:async';

class Node {
  int data;
  Node? next;
  Node({required this.data});
}

class Stack {
  Node? top = null;
  push(int data) {
    Node newNode = Node(data: data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  pop() {
    if (top == null) {
      print("stack underflow");
      return;
    }
    top = top!.next;
  }

  display() {
    if (top == null) {
      print("satck overflow");
      return;
    }
    var temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.display();
}
