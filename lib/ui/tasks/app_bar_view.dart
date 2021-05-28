import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/styles.dart';

class AppBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      titleSpacing: 0,
      pinned: true,
      expandedHeight: 100.0,
      backgroundColor: dsBackground,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Tarefas',
          style: dsHeadingTera,
        ),
        titlePadding: EdgeInsets.symmetric(
          horizontal: dsMedium,
          vertical: dsMedium
        )
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_horiz,
            color: dsGrey3,
          ),
          tooltip: 'Configurações',
          onPressed: () { /* ... */ },
        ),
      ]
    );
  }
}