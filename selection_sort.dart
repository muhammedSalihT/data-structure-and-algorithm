class selectionSorting {
  void sortingArray(List<int> arr) {
    int n = arr.length;

    for (int i = 0; i < n - 1; i++) {
      int minIndex = i;

      for (int j = i + 1; j < n; j++) {
        if (arr[j] < arr[minIndex]) {
          minIndex = j;
        }
      }
      int temp = arr[minIndex];
      arr[minIndex] = arr[i];
      arr[i] = temp;
    }
    for (int i = 0; i < arr.length; i++) {
      print(arr[i]);
    }
  }
}

void main(List<String> args) {
  List<String> arr = ["salih", "sali", "sal", "sa", "s"];
  // selectionSorting obj = selectionSorting();

  // obj.sortingArray(arr);

  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i].length > arr[j].length) {
        var temp = arr[j];
        arr[j] = arr[i];
        arr[i] = temp;
      }
    }
  }
  print(arr);
  print(arr[4].length);
}
