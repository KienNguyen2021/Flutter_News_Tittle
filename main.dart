import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  // }

  runApp( MaterialApp(

    home: SafeArea(

      // Center : Text is in center of the phone

      child: Scaffold(

        // body : Center(child: MyWidget()), // Text in the Center

        //     body:  MyWidget(),   // Text will be displayed on Top

        body:  Center(child: MyWidget()),

      ),
    ),


    debugShowCheckedModeBanner:false , // disappear the Flutter at corner of phone

  )
  );
}

/* Column, Row, Stack, Expanded, Flexible, Positioned, Align, Center

 */

class MyWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Stack(

          children: [              // in Stack : Card is placed over Container

               Container(
                          color: Colors.blue,
                     ),

            // 1 : open Card
            /* 2 : put Cursor before Card------> Select Wrap with Widget
               3 : change Card to  Positioned
               4 : added :bottom: 20, left: 10, right: 10, -----> moved this Card to Bottom
             */

                Positioned(

                      bottom: 20, left: 10, right: 10,

                       child:  Card(
                           shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10.0)
                                     ),

                    //1 :  open Child : Column
                               // 2 : Column text is close to the screen edge, put cursor before Column-------> select Wrap with Padding :



                           child: const Padding(
                                padding: EdgeInsets.all(10.0),


                                child: Column(

                                      children: [
                                         Text('Newyork Time',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blueAccent)),

                                           SizedBox(height: 20,),       // to give a gap space between 2 columns of text

                                         Text('If the content is expanded, it shows the full content along with a “See Less” option when the number of lines is greater than or equal to maxLinesToShow,'
                                            ' This ExpandableWidget encapsulates the logic for displaying expandable/collapsible text and enhances the user experience by providing a dynamic view based on the length of the content.',
                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)



                                          ],
                                        ),
                           ),
                          ),
                )
      ],


    );

  }

}

