import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/payments.dart';
class PaymentDetailScreen extends StatefulWidget {
  final Payment payment;
  final VoidCallback press;
  const PaymentDetailScreen({super.key, required this.payment, required this.press});

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
        Column(
          children: [
            Expanded(
              child: Container(
              color: Colors.blue,
      ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),

          ],
        ),

              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/Ellipse 20.png'), // Provide your image path
                    ),
                    SizedBox(height: 10), // Spacer
                    Text(
                      widget.payment.name,
                      style: GoogleFonts.lexend(
                          fontSize: 23,
                          fontWeight: FontWeight.w800,color: Colors.white
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 27,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Color(0xff015382),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: Center(child: Text(widget.payment.mode,style: GoogleFonts.lexend(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),),),
                    ),
                    SizedBox(height: 20),

                    Container(
                      width: 331,
                      height: 386,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: const Offset(
                              0,
                              3,
                            ),
                            blurRadius: 7.0,
                            spreadRadius: 5.0,
                          ), //BoxShadow//BoxShadow
                        ],
                      ),// Adjust color as per your design
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.done_all_rounded,color: Colors.green,),SizedBox(width: 10,),
                                Text(widget.payment.status,style: GoogleFonts.lexend(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date",style: GoogleFonts.lexend(fontSize: 22,color: Color(0xff015382),fontWeight: FontWeight.w600)),
                                Text(widget.payment.date,style: GoogleFonts.lexend(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Amount",style: GoogleFonts.lexend(fontSize: 22,color: Color(0xff015382),fontWeight: FontWeight.w600)),
                                Text(widget.payment.amount,style: GoogleFonts.lexend(fontSize: 20,color: Color(0xff015382),fontWeight: FontWeight.w600)),
                              ],
                            ),
                          )
                          // Add payment details widgets here
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // User Details and Payment Container
          ],
        ),
        )
      ),
    );
  }
}
