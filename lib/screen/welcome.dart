import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:food_express/component/button.dart';
import 'package:food_express/component/constant.dart';
import 'package:food_express/screen/register.dart';

import 'numberScreen.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  //TextEditingController phoneController = new TextEditingController();

  // int _value = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('en'),
        Locale('it'),
        Locale('fr'),
        Locale('es'),
        Locale('de'),
        Locale('pt'),
        Locale('ko'),
        Locale('zh'),
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
      ],
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10.0, right: 20.0, left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
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
                      'Food Express',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'RESTAURANT',
                      style: TextStyle(color: Colors.black38, fontSize: 12.0),
                    ),
                  ],
                ),

                // Container(
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage('images/food.jpg'),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                //   width: MediaQuery.of(context).size.width,
                //   height: 275.0,
                // ),

                // Container(
                //
                //
                //
                //   width: MediaQuery.of(context).size.width,
                //   height: 275.0,
                //   child: Image(
                //     image: AssetImage('images/foodsss.png'),
                //   ),
                // ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 70.0,
                          child: Column(
                            children: [
                              //TODO: COUNTRY CODE DROP DOWN
                              CountryCodePicker(
                                onChanged: print,
                                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                initialSelection: 'IT',

                                showCountryOnly: true,
                                showOnlyCountryWhenClosed: true,
                                favorite: ['+39', 'FR'],

                                showFlagDialog: true,
                                comparator: (a, b) => b.name.compareTo(a.name),

                                onInit: (code) => print(
                                    "on init ${code.dialCode} ${code.name} "),
                              ),
                            ],
                          ),
                        ),

                        //
                        SizedBox(
                          width: 5.0,
                        ),
                        Material(
                          child: Container(
                              padding: EdgeInsets.only(left: 10.0, right: 10.0),
                              width: 260.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),

                              //***** ENTER  MOBILE NUMBER TEXT FIELD
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: kTxtField2.copyWith(
                                    labelText:
                                        ("Enter Phone Number")), //TODO: MOBILE NUMBER
                              )),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        // ButtonTheme(
                        //   minWidth: 60.0,
                        //   height: 32.0,
                        //   child: RaisedButton(
                        //     //TODO: Continue button
                        //     onPressed: () {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => Register()));
                        //     },
                        //     elevation: 4.0,
                        //     child: Text(
                        //       "Continue",
                        //       style:
                        //           TextStyle(fontSize: 15.0, color: Colors.white),
                        //     ),
                        //     color: Colors.green.shade500,
                        //     splashColor: Colors.black,
                        //     shape: StadiumBorder(),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Button(
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      colour: Colors.green,
                      buttonTitle: ("Continues"),
                    ),

                    SizedBox(height: 30.0),
                    Text(
                      "or",
                      style: TextStyle(fontSize: 20.0, color: Colors.black45),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      height: 55.0,
                      width: 305.0,
                      child: SignInButton(
                        //TODO: LOGIN WITH FACEBOOK
                        Buttons.FacebookNew,

                        //mini: true,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PhoneNumber()));
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
// with custom text
                    Container(
                      height: 55.0,
                      width: 305.0,
                      child: SignInButton(
                        //TODO: LOGIN WITH GOOGLE
                        Buttons.Google,
                        // Text( "Sign in with Google"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PhoneNumber()));
                        },
                      ),
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onCountryChange(CountryCode countryCode) {
    //TODO : manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
  }
}
