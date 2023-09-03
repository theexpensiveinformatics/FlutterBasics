import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main()
{
  runApp(listView());
}
class listView extends StatelessWidget


{
  @override
  Widget build(BuildContext context) {
    var arrNames=['Radhe','RadheKrishna','Mahadev','Om Namah Sivay','Rudra','Ram',"Jay Siya Ram",'Har Har Mahadev','Namah','Om'];
    return Scaffold(
      
      body: Column(

        children: [
          SizedBox(height: 40,),
           Text("ListView Builder",style: Theme.of(context).textTheme.displayLarge),
          Container(
            height: 300, // Adjust the height as needed
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  arrNames[index],
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                );
              },
              itemCount: arrNames.length,
              itemExtent: 100,
              padding: EdgeInsets.only(left: 50),
            ),
          ),

          Text("ListView Seperated",style: Theme.of(context).textTheme.displayLarge),
          // Container(
          //   height: 400,
          //   child: ListView.separated(itemBuilder:  (context,index){
          //
          //     return(Text(arrNames[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),));
          //
          //   },itemCount: arrNames.length ,
          //     padding: EdgeInsets.only(left: 50),
          //     separatorBuilder: (context,index){
          //     return Divider(height: 100 /*extend*/,thickness: 1,);
          //     },
          //
          //   ),
          // )
          Container(
            height: 400,
            child: ListView.separated(itemBuilder: (context,index){
              return(
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Image $index"),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20)),
                      Text("Lomore phism"),

                    ],
                  )
                ],
              )
              );
            },
              itemCount: arrNames.length,

            separatorBuilder: (context,index){
              return const Divider(
                height: 100,
                thickness: 1,
              );
            },
            ),
          )


        ],
      ),
    );
  }
}

