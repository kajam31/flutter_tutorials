import "package:http/http.dart";
import "dart:convert";
import "package:intl/intl.dart";

class WorldTime {
  late String location; // location name for the ui
  late String time; // time in that location
  late String flag; // url to an asset flag icon
  late String url; // the part that changes when you make a new instance / place

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      // make the request
      Response respose =
          await get(Uri.http("worldtimeapi.org", "api/timezone/$url"));
      Map data = jsonDecode(respose.body);
      // print(data);
      // get properties from data

      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);

      // print(datetime);
      // print(offset);
      // create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);

      // set the time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      time = "there was an error";
      print("caught error: $e");
    }
  }
}
