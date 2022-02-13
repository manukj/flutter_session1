import 'package:flutter/material.dart';
import 'package:state_managment/bubby_code/performace_buggy.dart';
import 'package:state_managment/getx/view/getx_view.dart';

import 'layout_buggy.dart';

class BuggyScreen extends StatelessWidget {
  const BuggyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Buggy Example'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Text('Layout Buggy'),
              ),
              Tab(
                icon: Text('Logical Buggy'),
              ),
              Tab(
                icon: Text('Performance Buggy'),
              ),
            ],
          ),
        ),
        body: _buildTabView(),
      ),
    );
  }

  Widget _buildTabView() {
    return TabBarView(children: [
      const LayoutBuggy(),
      GetXView(),
      const PerformanceBuggy()
    ]);
  }
}
