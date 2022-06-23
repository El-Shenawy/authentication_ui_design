import 'package:flutter/material.dart';
import 'package:login/components/text_field.dart';
import '../constants.dart';

class RoundedPassword extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPassword({
    Key key,
    @required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPassword> createState() => _RoundedPasswordState();
}

class _RoundedPasswordState extends State<RoundedPassword> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        onChanged: widget.onChanged,
        decoration: const InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
