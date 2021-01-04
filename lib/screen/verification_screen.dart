import 'package:flutter/material.dart';
import 'package:food_express/component/bottom_bar.dart';
import 'package:food_express/component/button.dart';
import 'package:food_express/component/constant.dart';


class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
        centerTitle: true,
        title: Text(
           'Register',
          style: kAppBarStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            bottom: 5.0, top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(

                  "Enter Verification Code we've sent on given number",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
                width: 320.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),

                //TODO: Enter Verification Code
                child: TextFormField(
                  decoration: kTxtField2.copyWith(
                      labelText:
                           ( 'Enter Verification Code')),
                )),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Timer'), //TODO: Timer
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      //TODO: RESEND BUTTON
                        'Resend',
                      style: TextStyle(color: Colors.green, fontSize: 18.0),
                    ))
              ],
            ),
            Button(
              //TODO: Continue Button
              onPress: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BottomBar()));
              },
              colour: Colors.green,
              buttonTitle:  (   'Continues'),
            ),
          ],
        ),
      ),
    );
  }
}
