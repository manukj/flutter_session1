import 'package:container_package/container_package.dart';
import 'package:flutter/material.dart';

class PackageExample extends StatefulWidget {
  const PackageExample({Key? key}) : super(key: key);

  @override
  State<PackageExample> createState() => _PackageExampleState();
}

class _PackageExampleState extends State<PackageExample> {
  BoxShape boxShape = BoxShape.circle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package example'),
      ),
      body: Column(
        children: [
          Center(
            child: CreativeContainer(
              height: 100,
              width: 100,
              color: Colors.red,
              boarderColor: Colors.blue,
              boxShape: boxShape,
              onTap: (height, width) {
                setState(() {
                  boxShape = boxShape == BoxShape.circle
                      ? BoxShape.rectangle
                      : BoxShape.circle;
                });
              },
            ),
          ),
          Center(
            child: CreativeContainer(
              height: 100,
              width: 100,
              color: Colors.red,
              boarderColor: Colors.blue,
              boxShape: boxShape,
              onTap: (height, width) {
                setState(() {
                  boxShape = boxShape == BoxShape.circle
                      ? BoxShape.rectangle
                      : BoxShape.circle;
                });
              },
            ),
          ),
          Center(
            child: CreativeContainer(
              height: 100,
              width: 100,
              color: Colors.red,
              boarderColor: Colors.blue,
              boxShape: boxShape,
              onTap: (height, width) {
                setState(() {
                  boxShape = boxShape == BoxShape.circle
                      ? BoxShape.rectangle
                      : BoxShape.circle;
                });
              },
            ),
          ),
          Center(
            child: CreativeContainer(
              height: 100,
              width: 100,
              color: Colors.red,
              boarderColor: Colors.blue,
              boxShape: boxShape,
              onTap: (height, width) {
                setState(() {
                  boxShape = boxShape == BoxShape.circle
                      ? BoxShape.rectangle
                      : BoxShape.circle;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
