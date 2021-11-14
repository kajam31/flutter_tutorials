/* 
void main () {
  User userOne = User(); // so in this case the datatype is User, instead of declaring that the variable a string, int, ... is now it is a User
  print(userOne.username);
  print(userOne.age);
  userOne.login();

  User userTwo = User();
  print(userTwo.username); // currently every username is mario, age = 25, ...
}

class User {
  String username = "mario";
  int age = 25;

  void login() {
    print("user logged in!");
  }
} */

void main() {
  User userOne = User("luigi",
      30); // so in this case the datatype is User, instead of declaring that the variable a string, int, ... is now it is a User
  print(userOne.username);
  print(userOne.age);
  userOne.login();

  User userTwo = User("mario", 25);
  print(userTwo.username); // currently every username is mario, age = 25, ...

  SuperUser userThree = SuperUser ("yoshi", 20);
  print(userThree.username);
  userThree.publish();
  userThree.login();
}

class User {
  String username = "test";
  int age = 0;

  // it should be String username; and int age; but it doesn't work here like that for some reason
  User(String user, int age) {
    this.username = user;
    this.age = age;
  }

  void login() {
    print("user logged in!");
  }
}

class SuperUser extends User {
  SuperUser(String username, int age) : super(username, age);
  void publish() {
    print("published update");
  }
}
