getAllUniqueElements(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    int count = 1;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j] && arr[i] != -1) {
        count++;
        arr[j] = -1;
      }
    }
    if (count == 1 && arr[i] != -1) {
      print(arr[i]);
    }
  }
}

void main(List<String> args) {
  // List<int> arr = [4, 3, 2, 2, 3, 2, 2, 3, 4, 1, 8,5];
  // getAllUniqueElements(arr);

   final mylist = [1, 1, 4, 0, 4, 4];

  final result = mylist
      .fold(<int, int>{}, (Map<int, int> map, item) => map..update(item, (count) => count + 1, ifAbsent: () => 1));

  print(result.keys.toList());
  print(result.values.toList());
}
