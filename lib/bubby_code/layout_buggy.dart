import 'package:flutter/material.dart';

class LayoutBuggy extends StatelessWidget {
  const LayoutBuggy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: const [
          FlutterLogo(
            size: 300,
          ),
          Flexible(
            flex: 1,
            child: Text(
              'sdsknfjdnfngkfmlgmfl jfgkljgkfjgk fjkgjfkjgkfkjgf gfk sfkgfd gkjfdgkdfng lkjjsldfk',
            ),
          )
        ],
      ),
    );
  }
}
