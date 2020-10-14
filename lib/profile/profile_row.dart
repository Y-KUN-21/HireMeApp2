import 'package:flutter/material.dart';
import 'package:hire_me/common/reAutoSizeText.dart';
import 'package:hire_me/constrants.dart';

class ProfileRow extends StatelessWidget {
  final String text;
  final Icon icon;
  final Function onPressed;
  ProfileRow({Key key, this.icon, this.text, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: boxDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ReAutoSizeText(
                text: text ?? "Email".toLowerCase(),
                fontWeight: FontWeight.bold,
                fontsize: 18,
              ),
            ),
            IconButton(
              icon: icon,
              onPressed: () {},
              color: selectedLabelText,
            )
          ],
        ),
      ),
    );
  }
}
