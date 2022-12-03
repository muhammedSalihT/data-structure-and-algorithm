class Pair {
  var min;
  var max;
}

class Global {
  static Pair findValu(List<int> arr) {
    Pair minmax = Pair();
    minmax.min = arr[0];
    minmax.max = arr[0];

    for (int i = 1; i < arr.length; i++) {
      if (arr[i] < minmax.min) {
        minmax.min = arr[i];
      } else if (arr[i] > minmax.max) {
        minmax.max = arr[i];
      }
    }
    return minmax;
  }
}

void main() {
  List<int> arr = [2, 4, 2, 4, 55, 5,100];
  final minmax = Global.findValu(arr);
  print(minmax.min);
  print(minmax.max);
}
