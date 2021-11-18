class Quote {
  late String text;
  late String author;

  Quote({required this.text, required this.author});
}
// when  not using the {} you have to input the data in the order that the parameters are written
// which can lead to confusion and other problems
// Quote myquote = Quote("this is the quote text", "autor name");
// Quote(String text, String author) {
//   this.text = text;
//   this.author = author;
// }

// when usin the {} around the parameter input of the function it makes the parameters named parameters
// this makes it so that you have to devine what you are declaring when You make a new class element

// Quote myquote = Quote(text: "this is the quote text", author: "autor name");
