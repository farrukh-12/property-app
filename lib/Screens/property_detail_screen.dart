import 'package:blumo_app/Screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils/listed_property.dart';

class PropertyDetailScreen extends StatefulWidget {
  final ListedProperty listedproperty;

  // Corrected constructor with key parameter
  const PropertyDetailScreen({Key? key, required this.listedproperty}) : super(key: key);

  @override
  State<PropertyDetailScreen> createState() => _PropertyDetailScreenState();
}

class _PropertyDetailScreenState extends State<PropertyDetailScreen> {
  @override
  bool passenable=false;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child:Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(90),
                            bottomLeft: Radius.circular(90),
                          ),
                          image: DecorationImage(
                            image: AssetImage(widget.listedproperty.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: IconButton(
                                icon: Icon(Icons.arrow_back,color: Colors.white,),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            // Favorite Icon
                            Positioned(
                              top: 10,
                              right: 10,
                              child: IconButton(
                                icon: Icon(Icons.favorite,color: passenable==false?Colors.white:Colors.red),
                                onPressed: () {
                                 setState(() {
                                    passenable=true;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                     Container(
                       child: Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: Column(
                           children: [
                             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 RichText(
                                   text: TextSpan(children: [
                                     TextSpan(text: 'RM ', style: GoogleFonts.lato(fontSize: 22,color: Color(0xff252B5C))),
                                     TextSpan(text: widget.listedproperty.price, style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w900,color: Color(0xff234F68))),
                                   ]),),
                                 Container(
                                   height: 35,
                                   width: 100,
                                   decoration: BoxDecoration(
                                     border: Border.all(color: Colors.grey),
                                     borderRadius: BorderRadius.circular(8)
                                   ),
                                   child: Center(
                                     child: Text("20 hours ago",style: GoogleFonts.poppins(fontSize:14,fontWeight: FontWeight.w400,color: Colors.black87),),
                                   ),
                                 ),
                               ],
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Row(
                               children: [
                                 Text(widget.listedproperty.address,style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey),)
                               ],
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Row(
                               children: [
                                 Text("House  information",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black87),),
                               ],
                             ),
                             SizedBox(
                               height: 20,
                             ),
                             Container(
                               height: 100,
                               child: ListView(
                                 scrollDirection: Axis.horizontal,
                                 children: [
                                   Column(
                                     children: [
                                       Container(
                                         height: 70,
                                         width: 90,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(25),
                                           border: Border.all(color: Colors.grey)
                                         ),
                                         child: Center(
                                           child: Text(widget.listedproperty.area,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),),
                                         ),
                                       ),
                                       Text("Area",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)

                                     ],
                                   ),
                                   SizedBox(width: 10,),
                                   Column(
                                     children: [
                                       Container(
                                         height: 70,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(25),
                                             border: Border.all(color: Colors.grey)
                                         ),
                                         child: Center(
                                           child: Text(widget.listedproperty.bds,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),),
                                         ),
                                       ),
                                       Text("Bedrooms",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)

                                     ],
                                   ),
                                   SizedBox(width: 10,),

                                   Column(
                                     children: [
                                       Container(
                                         height: 70,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(25),
                                             border: Border.all(color: Colors.grey)
                                         ),
                                         child: Center(
                                           child: Text(widget.listedproperty.brs,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),),
                                         ),
                                       ),
                                       Text("Bathrooms",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)

                                     ],
                                   ),
                                   SizedBox(width: 10,),
                                   Column(
                                     children: [
                                       Container(
                                         height: 70,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(25),
                                             border: Border.all(color: Colors.grey)
                                         ),
                                         child: Center(
                                           child: Text(widget.listedproperty.garage,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),),
                                         ),
                                       ),
                                       Text("Garages",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)
                                     ],
                                   )
                                 ],
                               ),
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Row(
                               children: [
                                 Text("Description",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black87),),
                               ],
                             ),
                             Row(
                               children: [
                                 Flexible(child: Align(
                                     alignment: Alignment.center,
                                     child: Text(widget.listedproperty.description,style: GoogleFonts.poppins(fontSize: 15,color: Colors.grey)))),
                               ],
                             ),
                           ]
                         ),
                       ),
                     ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),

            ),
            Positioned(
              bottom: 20,left: 0,right: 0,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.extended(onPressed: (){},
                    label: Text('Call'),
                    icon: Icon(Icons.phone),backgroundColor: Color(0xff185A80),),
                  SizedBox(width: 10,),
                  FloatingActionButton.extended(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));},
                      label: Text('Message'),
                      icon: Icon(Icons.message,),backgroundColor: Color(0xff185A80))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
