import 'package:flutter/material.dart';

class HomeViewError extends StatelessWidget {
  final String message;

  const HomeViewError({
    Key key,
    @required this.message,
  })  : assert(message != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('😡 $message'),
        ],
      ),
    );
  }
}
