import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/widgets/timer_card_layout.dart';

class TimerCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TimerCardLayout(),
    );
  }
}