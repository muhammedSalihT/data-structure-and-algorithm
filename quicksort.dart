class QuickSort {
  static List<int> quickSorting(List<int> arr) {
    quickSortOpertaion(arr, 0, arr.length - 1);
    return arr;
  }

  static quickSortOpertaion(List<int> array, int firstIndex, int lastIndex) {
    if (firstIndex >= lastIndex) {
      return;
    }
    int pivot = firstIndex;
    int i = firstIndex + 1;
    int j = lastIndex;
    while (i <= j) {
      if (array[pivot] < array[i] && array[pivot] > array[j]) {
        swapArray(array, i, j);
        i++;
        j--;
      }
      if (array[pivot] >= array[i]) {
        i++;
      }
      if (array[pivot] <= array[j]) {
        j--;
      }
    }
    swapArray(array, j, pivot);
    quickSortOpertaion(array, firstIndex, j);
    quickSortOpertaion(array, j + 1, lastIndex);
  }

  static swapArray(List<int> swaparray, int fisrt, int second) {
    int temp = swaparray[fisrt];
    swaparray[fisrt] = swaparray[second];
    swaparray[second] = temp;
  }
}

void main() {
  List<int> array = [23, 10, 3, 5, 5, 1];
  print(array.length);
  List<int> arr = QuickSort.quickSorting(array);
  print(arr);
}
