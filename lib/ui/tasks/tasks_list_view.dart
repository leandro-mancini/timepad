import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/styles.dart';
import 'package:timepad/ui/shared/widgets/list_item_layout.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: dsMedium
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return ListItemLayout();
          },
          childCount: 10,
        ),
      ),
    );
  }
}