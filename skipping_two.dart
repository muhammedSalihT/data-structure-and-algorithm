void main() {
  List<int> arr = [2, 5, 10, 3, 25, 5, 5, 3, 2, 6, 5, 2];

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 5 == 0) {
      print(arr[i]);
      i = i + 2;
    } else {
      print(arr[i]);
    }
  }
}
