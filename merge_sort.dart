class MergeSort {
  static void mergeSort(List<int> arr) {
    int left = 0;
    int right = arr.length - 1;

    if (left >= right) {
      return;
    } else {
      int mid = (1 + right) ~/ 2;
      List<int> leftArray = [];
      List<int> rightArray = [];
      leftArray[1] = arr[1];
      print(leftArray);
      for (int i = 0; i < mid; i++) {
        leftArray[i] = arr[i];
      }

      for (int i = 0; i < mid - right; i++) {
        rightArray[i] = arr[mid + 1 + i];
      }
      mergeSort(rightArray);
      mergeSort(leftArray);
      print(rightArray);
      print(leftArray);
    }
  }
}

void main(List<String> args) {
  List<int> arr = [2, 3, 4, 4, 5];
  MergeSort.mergeSort(arr);
}
