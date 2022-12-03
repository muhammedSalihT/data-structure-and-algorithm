class HeapSort {
  heapSortingList(List<int> arr) {
    for (int i = arr.length - 1; i >= 0; i--) {
      heapify(arr, arr.length, i);

      for (int i = arr.length - 1; i >= 0; i--) {
        int temp = arr[0];
        arr[0] = arr[i];
        arr[i] = temp;
        heapify(arr, i, 0);
      }
    }

    printArray(arr);
  }

  printArray(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      print(arr[i]);
    }
  }

  heapify(List<int> arr, n, int i) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;

    if (arr[left] > arr[largest] && left < n) {
      largest = left;
    }

    if (arr[right] > arr[largest] && right < n) {
      largest = right;
    }
    if (largest != i) {
      int temp = arr[i];
      arr[i] = arr[largest];
      arr[largest] = temp;
      heapify(arr, n, largest);
    }
  }
}

void main(List<String> args) {
  List<int> arr = [25, 10, 3, 2, 19, 55];
  HeapSort().heapSortingList(arr);
}
