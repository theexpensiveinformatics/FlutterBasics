import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var arrNames=['Krishna','Radhe', 'Om Namah SIvay','Mahadev'];

    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index)
      {
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrNames[index]),
          subtitle: Text('jay siya ram'),
          trailing: Icon(CupertinoIcons.arrow_right),
        );

      },
      itemCount: arrNames.length,
      separatorBuilder: (context, index) {
        return const Divider(
        thickness: 1,
        height: 100,
        );
      },
      ),
    );
  }

}