import 'package:flutter/material.dart';
import 'package:food_express/component/button.dart';

import 'package:food_express/component/constant.dart';
import 'package:food_express/screen/verification_screen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Register",
          style: kAppBarStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Foodoz',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: Colors.green,
                        size: 25.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        width: 320.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),

                        //TODO: ENTER RESTAURANT
                        child: TextFormField(
                          decoration:
                              kTxtField2.copyWith(labelText: "RESTAURANT NAME"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.green,
                        size: 25.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        width: 320.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),

                        //***** ENTER EMAIL TEXT FIELD
                        child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: kTxtField2.copyWith(
                                labelText: 'EMAIL ADDRESS')), //TODO: USER EMAIL
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
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
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),

                          //***** ENTER EMAIL TEXT FIELD
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: kTxtField2.copyWith(
                                labelText: 'Enter Phone Number'),
                            //TODO: PHONE NUMER
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "We'll send verification code on above given Number",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    child: Button(
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Verification()));
                        },
                        colour: Colors.green,
                        buttonTitle: 'Continues'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
