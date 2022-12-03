class Rotate {
  static void rotateFun({List<int>? arr, int? rotatingNumber}) {
    List<int> temp = [];
    for (int i = 0; i < rotatingNumber!; i++) {
      temp.add(arr![i]);
      print(temp);
    }

    for (int i = 0; i <= arr!.length - rotatingNumber; i++) {
      arr[i] = arr[i + rotatingNumber];
      print(arr[i]);
    }
    int num = rotatingNumber;
    for (int i = 0; i < rotatingNumber; i++) {
      arr[arr.length-1- num] = temp[i];
      num--;
      print(arr);
    }

    print(arr);
  }
}

// simple method

class RotateArray {
  static void rotatingFunction({List<int>? arr, rotatingTimes}) {
    int p = 1;
    while (p <= rotatingTimes) {
      int temp = arr![0];
      for (int i = 0; i < arr.length - 1; i++) {
        arr[i] = arr[i + 1];
      }
      arr[arr.length - 1] = temp;
      p++;
    }
    print(arr);
  }
}

void main(List<String> args) {
  List<int> arr = [3, 55, 4, 2, 45, 0, 2, 6];
  int num = 2;
  Rotate.rotateFun(arr: arr, rotatingNumber: num);
  RotateArray.rotatingFunction(arr: arr, rotatingTimes: 3);
}
