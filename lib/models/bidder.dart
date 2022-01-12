class Bidder {
  String? name;
  DateTime? date;
  num? price;
  String? imgUrl;

  Bidder({
    this.name,
    this.date,
    this.price,
    this.imgUrl,
  });

  static List<Bidder> generateBidder() {
    return [
      Bidder(
          name: 'Harshita',
          date: DateTime.now(),
          price: 1.53,
          imgUrl: 'assets/images/person1.jpeg'),
      Bidder(
          name: 'Varun',
          date: DateTime.now(),
          price: 1.52,
          imgUrl: 'assets/images/person2.jpeg'),
      Bidder(
          name: 'Himesh',
          date: DateTime.now(),
          price: 1.51,
          imgUrl: 'assets/images/person3.jpeg'),
      Bidder(
          name: 'Ayushi',
          date: DateTime.now(),
          price: 1.49,
          imgUrl: 'assets/images/person4.jpeg'),
      Bidder(
          name: 'Kartik',
          date: DateTime.now(),
          price: 1.49,
          imgUrl: 'assets/images/person5.jpeg'),
    ];
  }

  static List<Bidder> generateHistory() {
    return [
      Bidder(
          name: 'Ayushi',
          date: DateTime.now(),
          price: 1.5,
          imgUrl: 'assets/images/person1.jpeg'),
      Bidder(
          name: 'Kartik',
          date: DateTime.now(),
          price: 1.49,
          imgUrl: 'assets/images/person2.jpeg'),
      Bidder(
          name: 'Himesh',
          date: DateTime.now(),
          price: 1.48,
          imgUrl: 'assets/images/person3.jpeg'),
      Bidder(
          name: 'Harshita',
          date: DateTime.now(),
          price: 1.48,
          imgUrl: 'assets/images/person4.jpeg'),
      Bidder(
          name: 'Varun',
          date: DateTime.now(),
          price: 1.47,
          imgUrl: 'assets/images/person5.jpeg'),
    ];
  }
}
