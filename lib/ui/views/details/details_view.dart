import 'package:bloc_library_template/generated/l10n.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).detailsViewTitle),
      ),
      body: SizedBox.expand(
        child: Image.network(
          'https://images.pexels.com/photos/716398/pexels-photo-716398.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
