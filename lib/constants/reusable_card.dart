import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final String hintText;

  const ReusableCard(
      {Key? key,
      required this.hintText,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 28, right: 28),
        child: TextField(
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFE67F1E),
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
        ),
      ),
    );
  }
}
