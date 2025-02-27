class PropertyModel{
  final String image;
  final String location;
  final String noofrooms;
  final String noofbathroom;
  final String Area;
  final String price;
  final String name;
  final String installment;
  PropertyModel({
    required this.price,
    required this.image,
    required this.location,
    required this.Area,
    required this.noofbathroom,
    required this.noofrooms,
    required this.name,
    required this.installment
});
}
List<PropertyModel>PropertyInfo=[
  PropertyModel(price: "436,000", image: "assets/Rectangle 45 (1).png", location: "", Area:"1245", noofbathroom: "2", noofrooms: "3",name: "Tivolli's Villa",installment: "upto 10 years installments"),
  PropertyModel(price: "100,000", image: "assets/Rectangle 45 (2).png", location: "", Area: "367", noofbathroom: "1", noofrooms: "2",name: "Ayana Hills",installment: "upto 15 years installments"),
  PropertyModel(price: "436,000", image: "assets/Rectangle 45 (1).png", location: "", Area:"1245", noofbathroom: "2", noofrooms: "3",name: "Tivolli's Villa",installment: "upto 10 years installments"),
  PropertyModel(price: "100,000", image: "assets/Rectangle 45 (2).png", location: "", Area: "367", noofbathroom: "1", noofrooms: "2",name: "Ayana Hills",installment: "upto 15 years installments"),


];