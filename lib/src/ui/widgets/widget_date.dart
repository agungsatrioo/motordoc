import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../utils/util_date.dart';

class DateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final clock =
        Stream<DateTime>.periodic(const Duration(seconds: 1), (count) {
      return now.add(Duration(seconds: count));
    });
    return StreamBuilder<DateTime>(
      stream: clock,
      builder: (context, snapshot) {
        return Text(
          DateTime.now().tanggal(),
          style: Theme.of(context).textTheme.caption.merge(TextStyle(color: Colors.white)),
          );
      },
    );
  }
}