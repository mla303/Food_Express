import 'package:flutter/material.dart';

import 'package:food_express/component/button.dart';
import 'package:food_express/component/constant.dart';
import 'package:food_express/screen/verification_screen.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Text(
              "Hey", //TODO: User Name login with (FB,Gmail)
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("You're almost in"),
            Text("Provide your phone number for verification"),
            SizedBox(
              height: 80.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone_android_outlined,
                  color: Colors.green,
                  size: 25.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 320.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),

                  //TODO: ENTER PHONE NUMBER FOR VERIFICATION
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration:
                          kTxtField2.copyWith(labelText: 'Enter Phone Number')),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
            ),
            SizedBox(
              height: 50.0,
            ),
            Button(
              //TODO: CONTINUE BUTTON
              onPress: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Verification()));
              },
              colour: Colors.green,
              buttonTitle: 'Continues',
            ),
          ],
        ),
      ),
    );
  }
}
