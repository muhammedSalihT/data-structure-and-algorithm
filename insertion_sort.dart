class InsertionSort {
  void insertionArray(List<int> arr) {
    for (int i = 0; i < arr.length-1; i++) {
      if (arr[i] > arr[i + 1]) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        if (i > 0 && arr[i] < arr[i -1]) {
          for (int j = i; j >= 1; j--) {
            if (arr[j] < arr[j - 1]) {
              temp = arr[j - 1];
              arr[j - 1] = arr[j];
              arr[j] = temp;
            }
          }
        }
      }
    }
    print(arr);
  }
}

void main(List<String> args) {
  List<int> arr = [3, 40, 11, 2, 50, 4];
  InsertionSort insertionSort = InsertionSort();
  insertionSort.insertionArray(arr);
}
