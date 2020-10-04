import 'package:bloc_library_template/generated/l10n.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => DetailsView(),
      settings: RouteSettings(name: 'DetailsView'),
    );
  }

  const DetailsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).detailsViewTitle),
      ),
      body: SizedBox.expand(
        child: Image.network('https://picsum.photos/500/500'),
      ),
    );
  }
}
