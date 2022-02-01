import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
  final String text;
  final Widget page;

  const MainButton({Key? key, required this.page, required this.text})
      : super(key: key);

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => widget.page,
        ),
      ),
      child: Container(
        height: 60,
        width: 210,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
