class SetterAndGetter {
  int? width;
  int? height;

  int get area {
    return width! * height!;
  }

  set setWidth(int? width) {
    width = width;
  }

  set setHeight(int? height) {
    height = height;
  }
  
}

void main(List<String> args) {
  var obj = SetterAndGetter();
}
