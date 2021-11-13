// if you use a void function it won't return anything
void main() {
  int currentAge = 17;
  String currentName = "Jasper";
  print("this is a test");
  String greet = greeting();
  int my_age = age();
  print(greet);
  print(my_age);
  print(AgeAndName(currentName, currentAge));
}
/* 
String greeting() {
  return "hello";
}
 */
int age() {
  return 17;
}

// if you don't have any loigic in the function you can write an arrow funtion
String greeting() => "hello";

String AgeAndName(name, age) {
    String res = "hello my name is ${name} and I am ${age} years old";
    return res;
}