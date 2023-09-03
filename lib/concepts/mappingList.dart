import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mappingList extends StatelessWidget
{
  var arrDetails = [
    {
      'name':'Vir Savarkar',
      'unread':'10',
      'state':'maharashtra'
    },

    {
      'name':'Sardar Patel',
      'unread':'10',
      'state':'Gujarat'
    },

    {
      'name':'Bhagat Singh',
      'unread':'10',
      'state':'Punjab'
    },

    {
      'name':'Chandra Shekhar Azad',
      'unread':'10',
      'state':'Madhyapradesh'
    },

    {
      'name':'Shubhas Chandra Bose',
      'unread':'10',
      'state':'Orissa'
    },


  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500,
            child: ListView(
              children: arrDetails.map((e) =>
              ListTile(
                leading: Icon(Icons.account_circle_outlined),
                title: Text(e['name'].toString()),
                subtitle: Text(e['state'].toString()),
                trailing: Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: RadialGradient(
                      colors: [Color(0xff08C8F6),Color(0xff4D5DFB)],
                    )
                  ),
                  child: Text(e['unread'].toString(),style: TextStyle(color: Colors.white,fontSize: 14)),
                ),
              )).toList(),
            ),
          ),
        ],
      ),
    );


  }
}