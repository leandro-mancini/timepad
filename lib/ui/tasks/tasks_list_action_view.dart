import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/styles.dart';

class TasksListActionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: actionContent(),
    );
  }

  Widget actionContent() {
    return Container(
      margin: EdgeInsets.only(
        top: dsMedium
      ),
      padding: EdgeInsets.symmetric(
        horizontal: dsMedium
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hoje',
            style: dsSubHeadingGiga,
          ),
          FlatButton(
            onPressed: () => {},
            child: Text(
              'Ver tudo',
              style: dsTextGiga,
            ),
          ),
        ],
      ),
    );
  }
}