import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.icon, @required this.onPress, this.buttonTitle, this.colour});

  final IconData icon;
  final Function onPress;
  final String buttonTitle;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: FlatButton(
        onPressed: onPress,
        child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        minWidth: MediaQuery.of(context).size.width,
        height: 55.0,
        color: colour,
        splashColor: Colors.lightGreen,
      ),
    );
  }
}

class inFoTile extends StatelessWidget {
  const inFoTile({this.icon, this.title, this.ontap});
  final IconData icon;
  final String title;

  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                size: 25.0,
                color: Colors.green,
              ),
              SizedBox(width: 25.0),
              Text(
                title,
                style: TextStyle(
                    // fontFamily: 'Poppin',
                    fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
