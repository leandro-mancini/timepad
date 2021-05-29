import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/styles.dart';

class TimerCardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: dsBlack,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dsXSmall)),
      margin: EdgeInsets.symmetric(
        horizontal: dsMedium
      ),
      child: InkWell(
        onTap: () => { print('click card') },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(dsXSmall))
          ),
          padding: EdgeInsets.symmetric(
            horizontal: dsMedium,
            vertical: ds2XLarge
          ),
          child: Column(
            children: [
              timeContent(),
              taskContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget timeContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '00:32:10',
          style: dsHeadingPetaWhite,
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: dsWhite,
          size: dsMedium,
        )
      ],
    );
  }

  Widget taskContent() {
    return Row(
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
    );
  }
}