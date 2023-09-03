

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textField extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    var emailText = TextEditingController();
    var passText = TextEditingController();
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 250,
                height: 50,
                child: TextField(
                  controller: emailText,
                  enabled: true,
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid
                      )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                      color: Colors.cyanAccent
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 2,
                            color: Colors.yellow,

                        )
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.red
                      )
                    ),

                    suffixText: "Email",
                    suffixIcon: IconButton(icon: Icon(Icons.account_circle_outlined),onPressed: (){print("print icon clicked");},),


                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Center(
              child: Container(
                width: 250,
                height: 50,
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',

                  controller: passText,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    prefixText: "Enter Password",
                    prefixStyle: TextStyle(fontSize: 10,),
                    prefixIconColor: Colors.purple,
                    prefixIcon: IconButton(icon: Icon(Icons.password),onPressed: (){}),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Colors.red
                        )
                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: Container(
                width: 250,
                height: 50,
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.number,
                  
                  controller: passText,
                  decoration: InputDecoration(
                    hintText: "Enter Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Colors.red
                        )
                    ),
                  ),
                ),
              ),
            ),

            ElevatedButton(onPressed: (){String email = emailText.text.toString(); String pass = passText.text.toString();print("Email: $email Password: $pass");}, child: Text('Get Vlaues'))
          ],
        ),
      ),

    );
  }


}