class MinAndMax {
  int? min;
  int? max;
}

class GetMinAndMax {
  MinAndMax obj = MinAndMax();
  MinAndMax findMinAndMax(List<int> arr) {
    obj.min = arr[0];
    obj.max = arr[0];

    for (int i = 1; i < arr.length; i++) {
      if (arr[i] < obj.min!) {
        obj.min = arr[i];
      } else if (arr[i] > obj.max!) {
        obj.max = arr[i];
      }
    }
    return obj;
  }
}

void main(List<String> args) {
  List<int> arr = [2, -1, 34, 5, 55, 10, 49, 500];
  final getobj = GetMinAndMax();
  MinAndMax min = getobj.findMinAndMax(arr);
  print(min.min);
  print(min.max);
}
