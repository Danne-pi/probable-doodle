import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicBtn extends StatefulWidget {
  const BasicBtn({Key? key, required this.text, required this.ontap})
      : super(key: key);
  final String text;
  final VoidCallback ontap;

  @override
  State<BasicBtn> createState() => _BasicBtnState();
}

class _BasicBtnState extends State<BasicBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      focusColor: Colors.grey,
      hoverColor: Colors.grey,
      splashColor: Colors.grey[800],
      highlightColor: Colors.grey,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 4,
            bottom: 0,
            left: 6,
            right: 6,
          ),
          child: Text(
            widget.text,
            style: GoogleFonts.bebasNeue(fontSize: 32),
          ),
        ),
      ),
    );
  }
}
