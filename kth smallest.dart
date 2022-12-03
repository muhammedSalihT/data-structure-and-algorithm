class KthSmallest {
  static List<int> sortingArray(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[i] > arr[j]) {
          int temp = arr[i];
          arr[i] = arr[j];
          arr[j] = temp;
        }
      }
    }
    return arr;
  }

  static int smallestElement(List<int> arr, int k) {
    return arr[k - 1];
  }
}

void main(List<String> args) {
  List<int> arr = [3, 4, 55, 2, 7, 10];
  int k = 1;
  arr = KthSmallest.sortingArray(arr);
  print(arr);
  int smallest = KthSmallest.smallestElement(arr, k);
  print("kth smallest element = $smallest");
}
