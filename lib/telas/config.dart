import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  const Config({Key? key}) : super(key: key);

  @override
  State<Config> createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          "Biblioteca",
          style: TextStyle(
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
