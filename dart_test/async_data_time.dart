// asynchrones code
void getData() async {
  // because it is async all the other code underneath it will still run
  // simulate netword request for a username from a database
  String username = await Future.delayed(Duration(seconds: 4), () {
    return ("yoshi");
  });
  // sometimes you do need to wait to run code because it needs the value that you are waiting for (a biografie of a user, ...)
  print("this happened"); // code runs white yoshi hasn't been printed

  // simutelate netwrod request to get bio of the username

  /* Future.delayed(Duration(seconds: 2), () {
      print("vegan, eg collecter and musiocian");
    }); */ // => this code will run before you get the yoshi output

  // this code can only function when username is returned
  String bio = await Future.delayed(Duration(seconds: 2), () {
    return ("vegan, eg collecter and musiocian");
  });
  // this code can only function when the username and bio are returned
  print("$username - $bio");
}

// simutelate netwrod request to get bio of the username

int counter = 0; // is only temporary

@override
void initState() {
  super.initState();
  getData();
  print("initstate function ran"); // is only temporary
}


body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text(
            "counter is $counter"), // rebuild the whole page everytime you press the button => build function ran (the initstate runs only once)
      ),




// api example
  // asynchrones code
  void getData() async {
    Response response =
        await get(Uri.https('jsonplaceholder.typicode.com', '/todos/1'));
    Map data = jsonDecode(response.body);
    print(data["title"]);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }