class BubbleSort {
  void sortingArray(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      for (int j = 0; j < arr.length - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
    print(arr);
  }
}

void main(List<String> args) {
  List<int> arr = [110, 56, 7, 200, 25, 100, 0, 2];
  BubbleSort bubbleSort = BubbleSort();
  bubbleSort.sortingArray(arr);
}
