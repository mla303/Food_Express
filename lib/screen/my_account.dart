import 'package:flutter/material.dart';
import 'package:food_express/component/button.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Icon(Icons.add),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'My Profile',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, bottom: 10.0, top: 10.0, right: 20.0),
              child: Container(
                height: 120.0,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'images/dp.jpg'), //TODO: SHOW PROFILE IMAGE
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 100.0,
                      width: 100.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0, top: 10.0),
                          child: Text(
                            'Food Junction', //TODO: RESTAURANT NAME
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Text(
                            'City Food Park', //TODO: ADDRESS
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        FlatButton(
                          minWidth: 30.0,
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            // MaterialPageRoute(
                            //     builder: (context) => EditProfile()));
                          },
                          child: Text(
                            'Restaurant Profile',
                            style:
                                TextStyle(color: Colors.green, fontSize: 14.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 10.0, bottom: 10.0, right: 20.0),
              child: Container(
                child: Column(
                  children: [
                    inFoTile(
                      //TODO: Insight
                      ontap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Insight()));
                      },
                      icon: Icons.insert_chart,
                      title: ('insight'),
                    ),
                    inFoTile(
                      //TODO: WALLET
                      ontap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Wallet()));
                      },
                      icon: Icons.account_balance_wallet_rounded,
                      title: ("Wallet"),
                    ),
                    inFoTile(
                      //TODO: REVIEW
                      ontap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Review()));
                      },
                      icon: Icons.rate_review,
                      title: ("My Review"),
                    ),
                    inFoTile(
                      //TODO: TERM AND CONDITIONS
                      ontap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Terms()));
                      },
                      icon: Icons.message,
                      title: ("Terms & Conditions"),
                    ),
                    inFoTile(
                      //TODO: SUPPORT
                      ontap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Support()));
                      },
                      icon: Icons.support,
                      title: ("Support"),
                    ),
                    inFoTile(
                      //TODO: SETTING
                      ontap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Setting()));
                      },
                      icon: Icons.settings,
                      title: ("settings"),
                    ),
                    inFoTile(
                      //TODO: LOGOUT BUTTON
                      ontap: () {},
                      icon: Icons.sensor_door,
                      title: ("Logout"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
