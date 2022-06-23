import 'package:flutter/material.dart';

import '../constants.dart';



class AlreadyHaveAccount extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAccount({
    Key key,  this.login = true, @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ?
          'Don\'t have an Account ? ':'Already Have an Account ? ',
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ?
            'Sign Up' : 'Sign In',
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
