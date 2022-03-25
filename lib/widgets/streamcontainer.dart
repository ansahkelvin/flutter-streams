import 'package:flutter/material.dart';

class StreamContainer extends StatelessWidget {
  const StreamContainer({Key? key, this.snapshot}) : super(key: key);
  final snapshot;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black,
      ),
      child: Text(
        snapshot.data.toString(),
        style: const TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
