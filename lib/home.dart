import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/concepts/BMI.dart';
import 'package:flutter_demo/concepts/cardView.dart';
import 'package:flutter_demo/concepts/circleAvatar.dart';
import 'package:flutter_demo/concepts/clipRRect.dart';
import 'package:flutter_demo/concepts/constrains.dart';
import 'package:flutter_demo/concepts/crossFade.dart';
import 'package:flutter_demo/concepts/customFont.dart';
import 'package:flutter_demo/concepts/dateAndTime.dart';
import 'package:flutter_demo/concepts/dateAndTimePicker.dart';
import 'package:flutter_demo/concepts/expanded.dart';
import 'package:flutter_demo/concepts/fontAwesomeIcon.dart';
import 'package:flutter_demo/concepts/fooAnimation.dart';
import 'package:flutter_demo/concepts/gradient.dart';
import 'package:flutter_demo/concepts/gridView.dart';
import 'package:flutter_demo/concepts/heroAnimation.dart';
import 'package:flutter_demo/concepts/inkWell.dart';
import 'package:flutter_demo/concepts/listTile.dart';
import 'package:flutter_demo/concepts/listWheelScrollView.dart';
import 'package:flutter_demo/concepts/mappingList.dart';
import 'package:flutter_demo/concepts/rangeSlider.dart';
import 'package:flutter_demo/concepts/richText.dart';
import 'package:flutter_demo/concepts/rowAndColumns.dart';
import 'package:flutter_demo/concepts/runTImeDataPassing.dart';
import 'package:flutter_demo/concepts/scrollView.dart';
import 'package:flutter_demo/concepts/sfullWidget.dart';
import 'package:flutter_demo/concepts/sharedPref.dart';
import 'package:flutter_demo/concepts/stackAndPositioned.dart';
import 'package:flutter_demo/concepts/textField.dart';
import 'package:flutter_demo/concepts/themeManagement.dart';
import 'package:flutter_demo/concepts/tweenAnimation.dart';
import 'package:flutter_demo/concepts/wrapWidget.dart';
import 'package:flutter_demo/imagePreview.dart';
import 'package:flutter_demo/styles/button.dart';
import 'package:flutter_demo/styles/color.dart';

import 'concepts/listView.dart';

void main()
{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,

  ));
}



class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


     body: SingleChildScrollView(
       child: Container(
        color: Color(0xFFE9F0F8),
        child: Column(
          children: [

            // Container(
            //   margin: EdgeInsets.only(top: 50,right: 50,left: 50),
            //   alignment: Alignment.center,
            //   width: double.infinity,
            //   height: 50,
            //
            //   child: ElevatedButton(
            //     onPressed: (){
            //       Navigator.push(context, MaterialPageRoute(builder: (context) => imagePreview())); //why the name of method is push ? -> basically memory management in stack format and when you call this method it will place the new page on top of the stack.
            //     },                                              //=> is nothing but anonymous function
            //
            //     style: ElevatedButton.styleFrom(
            //       foregroundColor: Color(0xFF000000),
            //         surfaceTintColor: Color(0xFF0099bc),
            //         elevation: 0,
            //         alignment: Alignment.center,
            //         shadowColor: secondaryText, //shadow color
            //         minimumSize: const Size(double.infinity, 50),
            //         backgroundColor: buttonBackground, //bg color
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10.0),
            //           side:
            //           BorderSide(color: buttonBorder),
            //
            //         )
            //     ),
            //     child: const Row(
            //
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         SizedBox(width: 8),
            //         Icon(Icons.account_circle_outlined),
            //         Text("Image Preview",
            //             style: TextStyle(color: Colors.black87 )),
            //       ],
            //     ),
            //
            //
            //     ),
            //
            // ),
            SizedBox(height: 50,),
            Container(
                width:300, height: 150,
                child: InkWell(child: Hero(tag: 'img',
                child: Image.asset('assets/images/flutter.png')),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>heroAnimation()));},)),

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text("Flutter Basics",style: Theme.of(context).textTheme.displayLarge,),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,right: 50,left: 50),
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => imagePreview())); //why the name of method is push ? -> basically memory management in stack format and when you call this method it will place the new page on top of the stack.
                },

                style: buttonPrimary,
                child:  Text("Image Preview",
                    style: Theme.of(context).textTheme.displayMedium)

                    )
                ),

            const SizedBox(
              height: 10,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => imagePreview()));
              },
              style: buttonPrimary,
              child: Text(
                "Image Preview",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> rowAndColumns()));},
                style: buttonPrimary,
                child: Text("Row And Columns",)),

            const SizedBox(height: 10),

            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> scrollView()));},
                style: buttonPrimary,
                child: Text("Scroll View")),

            SizedBox(height: 10),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>listView()));}, child: Text("ListView",style: Theme.of(context).textTheme.displayMedium,),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>inkWell()));}, child: Text("InkWell",style: Theme.of(context).textTheme.displayMedium,),style:buttonPrimary),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>expanded()));}, child: Text("Expanded Widget",style: Theme.of(context).textTheme.displayMedium,),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> listTile()));}, child: Text("ListTile",style: Theme.of(context).textTheme.displayMedium,),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => circleAvatar()));}, child: Text("Circle Avatar",style: Theme.of(context).textTheme.displayMedium,),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => customFont()));}, child: Text("Custom fonts",style: Theme.of(context).textTheme.displayMedium,),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => themeManagement()));}, child: Text("Theme Management",style: Theme.of(context).textTheme.displayMedium,),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> cardView()));}, child: Text("Card View",style: Theme.of(context).textTheme.displayMedium,),style: buttonPrimary),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>textField()));}, child: Text('Text Field',style: Theme.of(context).textTheme.displayMedium,),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>dateAndTime()));}, child: Text('Date & Time',style: Theme.of(context).textTheme.displayMedium,),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>dateAndTimePicker()));}, child: Text('Date & Time Picker'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>gridView()));}, child: Text('Grid View'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>stackAndPositioned()));}, child: Text('Stack & Positioned'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>wrapWidget()));}, child: Text('Wrap Widget'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>richText()));}, child: Text('Rich Text'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>fontAwesomeIcon()));}, child: Text('Font Awesome Icon'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>sfullWidget()));}, child: Text('Statefull Widget'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>constrains()));}, child: Text('Constraints'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>runTimeDataPassing()));}, child: Text('Run Time Data Passing'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>rangeSlider()));}, child: Text('Range Slider'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BMI()));}, child: Text('BMI Calculator'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>fooAnimation()));}, child: Text('Foo Animation'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>crossFade()));}, child: Text('Cross Fade Animation'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>listWheelScrollView()));}, child: Text('List Wheel Scrollview'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>clipRRect()));}, child: Text('Clip RRect'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>gradient()));}, child: Text('Gradients'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>mappingList()));}, child: Text('Mapping List'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>tweenAnimation()));}, child: Text('Tween Animation'),style: buttonPrimary,),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>sharedPref()));}, child: Text('Shared Pref'),style: buttonPrimary,),



            SizedBox(height: 100,)
          ],
        ),
    ),
     ),

    );
  }
}