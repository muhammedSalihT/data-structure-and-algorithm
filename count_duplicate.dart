class CountDuplicate {
  static int countOfDuplicate(List<int> arr) {
    //method --1

    // Map<int, int> count = {};
    // arr.forEach((element) => count[element] = (count[element] ?? 0) + 1);
    // return count.toString();

    //method --2

    // int count = 0;
    // List<int> temp = [];
    // arr.forEach((element) {
    //   if (temp.contains(element)) {
    //     count++;
    //   } else {
    //     temp.add(element);
    //   }
    // });
    // return count;

    //method ---3
    int count = 0;
    for (int i = 0; i < arr.length; i++) {
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[i] != -1 && arr[i] == arr[j]) {
          arr[j] = -1;
          count++;
        }
      }
    }
    return count;
  }
}

void main(List<String> args) {
  List<int> array = [3, 1, 2, 3, 5, 2,3,1,7,3,1,8];
  int result = CountDuplicate.countOfDuplicate(array);
  print("count of duplicate elements ${result}");
}
