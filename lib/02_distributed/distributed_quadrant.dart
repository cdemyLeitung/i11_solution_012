import 'package:flutter/material.dart';

class DistributedQuadrant extends StatelessWidget {
  final void Function(int number, int direction) onClick;
  final int Function(int number) getValue;
  final int number;
  const DistributedQuadrant({super.key, required this.onClick, required this.getValue, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Icon(
              Icons.arrow_downward,
              color: Colors.white,
            ),
            padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
          ),
          onTap: () {
            onClick(number, -1);
          },
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.green[100],
          ),
          width: 150,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Text(
              '${getValue(number)}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        InkWell(
          child: Container(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
            padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
          ),
          onTap: () {
            onClick(number, 1);
          },
        ),
      ],
    );
  }
}
