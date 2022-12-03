void main(List<String> args) {
  List<int> arr = [1, 3, 4, 5];
  primeOrNot(arr);

  //primeOrNot(31);
}

primeOrNot(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = 2; j < arr[i]; j++) {
      if (arr[i] > 1 && arr[i] % j == 1) {
        print(arr[i]);
      }
    }
  }
}
