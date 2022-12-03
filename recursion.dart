void main(List<String> args) {
  Salih s = Salih();

  Salih.fun();
  Salih().model();
  Salih.name = "iam";
  Salih.fun();
}

class Salih {
  static String name = "Salih";
  static fun() {
    print(name);
  }

  model() {
    print(name);
  }

  // Salih() {
  //   name = "salih";
  //   print(name);
  // }
}

class B{
  
}
