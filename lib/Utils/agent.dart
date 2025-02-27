class Agent{
  String name;
  String address;
  String listings;
  String clients;
  String housesold;
  String image;
  String  ratings;
  String ranking;
  Agent({
    required this.address,
    required this.image,
    required this.name,
    required this.clients,
    required this.housesold,
    required  this.listings,
    required this.ratings,
    required this.ranking
});
}
List<Agent>agent=[
  Agent(address: "Jakarta,Indonesia", image: "assets/image1.jpg", name: "James Cordan", clients: "70", housesold: "100", listings: "50",ratings: "4", ranking: '1'),
  Agent(address: "Jakarta,Indonesia", image: "assets/image2.jpg", name: "Anderson", clients: "70", housesold: "100", listings: "50",ratings: "4", ranking: '2'),
  Agent(address: "Jakarta,Indonesia", image: "assets/image3.jpg", name: "Samantha", clients: "70", housesold: "100", listings: "50",ratings: "4", ranking: '3'),
  Agent(address: "Jakarta,Indonesia", image: "assets/image1.jpg", name: "James Cordan", clients: "70", housesold: "100", listings: "50",ratings: "4", ranking: '4'),
  Agent(address: "Jakarta,Indonesia", image: "assets/image2.jpg", name: "Lisa bell", clients: "70", housesold: "100", listings: "50",ratings: "4", ranking: '5'),

];