void main(List<String> args) {
  List<int> arr = [4, 44, 5, 30, 25, 1];

  for (int i = 0; i < arr.length; i++) {
    if (i + 1 < arr.length) {
      arr[i] = arr[i + 1];
    }
  }
  print(arr);
}
