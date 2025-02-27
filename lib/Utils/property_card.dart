import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/Utils/property_model.dart';
class PropertyCard extends StatelessWidget {
  final PropertyModel propertyModel;
  final VoidCallback press;
  const PropertyCard({super.key, required this.propertyModel, required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: press,
        child: Container(
          width:300,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff185A80),width: 2),
            borderRadius: BorderRadius.circular(24),

          ),
          child: Row(
            children: [
              Container(height:98,width:104,decoration:BoxDecoration(
                image: DecorationImage(image: AssetImage(propertyModel.image),fit: BoxFit.fill ),
              )),
              SizedBox(width: 10,),
              Expanded(
                child: Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(propertyModel.name,style: GoogleFonts.lexend(fontSize: 18,fontWeight: FontWeight.w700),),
                      Row(children: [
                        Image.asset("assets/images/img/coin.png"),
                        SizedBox(width: 5,),
                        Text(propertyModel.price,style: GoogleFonts.lexend(fontSize: 14,fontWeight:FontWeight.w700,color:Colors.grey),),
                      ],),
                      Row(
                        children: [
                          Image.asset("assets/images/img/square_feet.png"),
                          SizedBox(width: 5,),
                          Text(propertyModel.Area,style: GoogleFonts.lexend(fontSize: 14,fontWeight:FontWeight.w700,color:Colors.grey),),
                          SizedBox(width: 20,),
                          Image.asset("assets/images/img/bed.png"),
                          SizedBox(width: 5,),
                          Text(propertyModel.noofrooms,style: GoogleFonts.lexend(fontSize: 14,fontWeight:FontWeight.w700,color:Colors.grey),),
                          SizedBox(width: 20,),
                          Image.asset("assets/images/img/bathroom.png"),
                          SizedBox(width: 5,),
                          Text(propertyModel.noofbathroom,style: GoogleFonts.lexend(fontSize: 14,fontWeight:FontWeight.w700,color:Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),
              )


            ],

          ),
        ),
      ),
    );
  }
}
