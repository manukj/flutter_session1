import 'package:flutter/material.dart';

class PerformanceBuggy extends StatelessWidget {
  const PerformanceBuggy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        35,
        (index) => Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const FlutterLogo(
                size: 40,
              ),
              Text('index $index'),
            ],
          ),
        ),
      ),
    );
  }
}
