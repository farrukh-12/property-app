import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/Screens/Buyer%20Screens/payment_detail_screen.dart';
import 'package:blumo_app/Utils/payments.dart';
import 'package:blumo_app/Utils/property_model.dart';
class PaymentCard extends StatelessWidget {
  final Payment payment;
  final VoidCallback press;
   PaymentCard({super.key, required this.payment, required this.press,});
  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentDetailScreen(payment: payment,press: (){},)));},
          child: Container(
            width:300,
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(payment.name,style: GoogleFonts.coiny(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xff185A80)),),
                          Text(payment.status,style: GoogleFonts.coiny(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.red),),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(mainAxisAlignment:MainAxisAlignment.start,children: [
                        Text(payment.mode,style: GoogleFonts.coiny(fontSize: 14,fontWeight:FontWeight.w400,color:Colors.grey),),
                      ],),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(payment.amount,style: GoogleFonts.coiny(fontSize: 14,fontWeight:FontWeight.w400,color:Color(0xff185A80)),),
                          Text(payment.date,style: GoogleFonts.coiny(fontSize: 14,fontWeight:FontWeight.w400,color:Colors.grey),),
                        ],
                      )
                    ],
                  ),
                ),

              ],

            ),
          ),
        ),
        Divider(thickness: 1,color: Colors.black,height: 30,)
      ],
    );
  }
}
