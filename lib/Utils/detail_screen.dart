import 'package:blumo_app/Screens/property_detail_screen.dart';
import 'package:blumo_app/Utils/listed_property.dart';
import 'package:blumo_app/Utils/property_card2.dart';
import 'package:flutter/material.dart';
import 'package:blumo_app/Utils/payments.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class DetailScreen extends StatefulWidget {
  late List<ListedProperty>listedproperty;

  DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left:5.0,top: 15,right: 5),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    height: 45,
                    width: 287,
                    decoration:BoxDecoration(border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),),
                    child: Row(
                      children: [
                        ImageIcon(AssetImage("assets/Vector (1).png",),color: Colors.grey,),
                        Container(
                          height: 24,
                          width: 147,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.grey.shade300,
                          ),
                          child: Row(
                            children: [
                              Center(child:Text("Los Angeles,CA",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500),)),SizedBox(width: 5,),
                              Icon(Icons.cancel_outlined,size: 20,),
                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text("Add any loc",style: GoogleFonts.poppins(fontSize: 15,color: Colors.grey),)
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text("Filters",style: GoogleFonts.poppins(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w600),)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sort : Homes for you",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff185A80)),),
                  Row(
                    children: [
                      Icon(Icons.saved_search_rounded,color: Color(0xff185A80),),SizedBox(width: 5,),
                      Text("Saved Search",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xff185A80)),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.72,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(itemCount: listedproperty.length,itemBuilder: (context,index){
                  return PropertyCard2(listedproperty: listedproperty[index], press: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PropertyDetailScreen(listedproperty: listedproperty[index],)));} ,);}),
              )
            ],
          ),
        ),
      )

    );
  }
}
