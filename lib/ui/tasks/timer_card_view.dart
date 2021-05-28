import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/styles.dart';

class TimerCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: dsMedium
        ),
        child: Container(
          decoration: BoxDecoration(
            color: dsBlack,
            borderRadius: BorderRadius.all(Radius.circular(dsXSmall))
          ),
          padding: EdgeInsets.symmetric(
            horizontal: dsMedium,
            vertical: ds2XLarge
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '00:32:10',
                    style: dsHeadingPetaWhite,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: dsWhite,
                      size: dsMedium,
                    ),
                    tooltip: 'Ir',
                    onPressed: () { /* ... */ },
                    splashColor: dsWhite,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.timer,
                    color: dsWhite,
                    size: dsMedium,
                  ),
                  SizedBox(
                    width: dsXSmall,
                  ),
                  Text(
                    'Design System',
                    style: dsTextGigaWhite,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}