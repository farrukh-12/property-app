import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/Utils/property_model.dart';

import 'agent.dart';
class AgentCard extends StatelessWidget {
  final Agent agent;
  final VoidCallback press;
  const AgentCard({super.key, required this.press, required this.agent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: InkWell(
        onTap: press,
        child: Container(
          width:160,
          height: 205,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xffF5F4F8)
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(height:95,width:95,decoration:BoxDecoration(borderRadius: BorderRadius.circular(100),border: Border.all(color: Colors.white,width: 4),
                    image: DecorationImage(image: AssetImage(agent.image),fit: BoxFit.fill ,
                    ),
                  )),

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(agent.name,style: GoogleFonts.lexend(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff185A80)),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Icon(Icons.location_on,color: Colors.red,size: 16,),
                            SizedBox(width: 5,),
                            Text(agent.address,style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w300,color:Colors.grey),),
                          ],),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Icon(Icons.star,color: Colors.amber,size: 12,),
                            SizedBox(width: 5,),
                            Text(agent.ratings,style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w500,color:Colors.grey),),
                            SizedBox(width: 10,),
                            Icon(Icons.house_rounded,color: Color(0xff234F68),size: 12,),
                            SizedBox(width: 5,),
                            Text(agent.housesold,style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w500,color: Color(0xff234F68)),),
                            Text(" sold",style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w500,color:Colors.grey),),

                          ],),
                        ),


                      ],
                    ),
                  )


                ],

              ),
              Positioned(
                  child: Container(
                height: 25,width: 31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff8BC83F)
                ),
                child: Center(
                  child: Text("#${agent.ranking}",style: GoogleFonts.lexend(fontSize: 12,fontWeight:FontWeight.w500,color:Colors.white),),
                ),
                ))
            ],
          ),
        ),
      ),
    );
  }
}
