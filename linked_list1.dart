void main() {
  List<int> arr = [-3, -23, 35, 60, 2];
  print(arr);
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 3 == 0) {
      arr[i] = 0;
    } else if (arr[i] % 5 == 0) {
      arr[i] = 1;
    }
  }
  print(arr);
}

// class Salih {
//   int? salih;

//   double? persent;

//   void sample(double result) {
//     persent = (result / 500) * 100;
//   }
// }

// class Iam extends Salih {}
