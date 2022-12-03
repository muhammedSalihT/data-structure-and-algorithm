class InsertToUnsortedArrayEnd {
  static insertToEnd(List<int> arr, int n, int insertingValue) {
    arr.insert(arr.length + 1, insertingValue);
    arr.length++;
    print(arr);
  }
}

void main(List<String> args) {
  List<int> arr = [2, 33, 50, 6, 10];
  int insertingValue = 20;
  InsertToUnsortedArrayEnd.insertToEnd(arr, arr.length, insertingValue);
}
