void main() {
  List randomData = ["jasper", "yoshi", "mario"];
  randomData.add("luigi");
  randomData.remove("yoshi");
  randomData += ["peach"];
  randomData.add(30);
  print(randomData);

  List<String> names = ["mario", "luigi"];
  //names.add(30); // will give an error because you can't add an integer to a list where all members must be strings
  print(names);

}