class Payment{
  String name;
  String status;
  String amount;
  String date;
  String mode;
  Payment({
    required this.name,
    required this.status,
    required this.amount,
    required this.date,
    required this.mode
});
}
List<Payment>payment=[
  Payment(name: "Endah Promende" , status: "Not Paid", amount: "50.000", date: "4/8/2023", mode:"Rent"),
  Payment(name: "Endah Promende" , status: "Paid", amount: "50.000", date: "4/7/2023", mode:"Instalment"),
  Payment(name: "Endah Promende" , status: "Paid", amount: "50.000", date: "4/6/2023", mode:"Rent"),
];