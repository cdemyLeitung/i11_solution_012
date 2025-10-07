import 'package:flutter/material.dart';

class DistributedHomepageTitle extends StatelessWidget {
  const DistributedHomepageTitle({
    super.key,
    required this.counters,
  });

  final List<int> counters;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
            child: Text(
              '${counters.fold(0, (before, current) => before + current)}',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              'Titel',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
            child: Text(
              '${counters.fold(0, (before, current) => before + current)}',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
