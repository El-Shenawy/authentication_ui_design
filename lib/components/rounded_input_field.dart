import 'package:flutter/material.dart';
import 'package:login/components/text_field.dart';
import '../constants.dart';

class RoundedField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  const RoundedField({
    Key key,
    @required this.hintText,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  State<RoundedField> createState() => _RoundedFieldState();
}

class _RoundedFieldState extends State<RoundedField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: kPrimaryColor,
          ),
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
