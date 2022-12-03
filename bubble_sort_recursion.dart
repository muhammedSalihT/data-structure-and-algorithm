class BubbleSortByRecursion {
  static List<int> bubbleSortRecursion(List<int> arr, int n) {
    if (n == 0 || n == 1) {
      return arr;
    } else {
      for (int i = 0; i < n -1; i++) {
        if (arr[i] > arr[i + 1]) {
          int temp = arr[i];
          arr[i] = arr[i + 1];
          arr[i + 1] = temp;
        }
      }
      bubbleSortRecursion(arr, n - 1);
    }
    return arr;
  }
}

void main(List<String> args) {
  List<int> arr = [2, 3, 11, 6, 55, 8, 0,0];
  List<int> result = BubbleSortByRecursion.bubbleSortRecursion(arr, arr.length);
  print(result);
}
