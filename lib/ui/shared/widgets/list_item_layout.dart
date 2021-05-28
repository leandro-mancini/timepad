import 'package:flutter/material.dart';
import 'package:timepad/ui/shared/styles.dart';

class ListItemLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dsXSmall)),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(dsMedium),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [avatar(), info()],
                ),
                timer(),
              ],
            ),
          ),
          action()
        ],
      ),
      
    );
  }

  Widget avatar() {
    return CircleAvatar(
      backgroundColor: dsPurple,
      child: Icon(
        Icons.desktop_mac,
        color: dsWhite,
        size: ds2XLarge,
      ),
    );
  }

  Widget info() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: dsMedium
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'UI Design',
            style: dsSubHeadingKilo,
          ),
          Wrap(
            spacing: 6.0,
            runSpacing: 6.0,
            children: <Widget>[
              _buildChip('Work', Color(0xFFFFEFF1)),
              _buildChip('Rasion Project', Color(0xFFF5EEFC)),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildChip(String label, Color color) {
    return Chip(
      labelPadding: EdgeInsets.all(0),
      label: Text(
        label,
        style: TextStyle(
          fontSize: dsXSmall,
          color: dsBlack,
        ),
      ),
      backgroundColor: color,
      padding: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }

  Widget timer() {
    return Text(
      '00:14:06',
      style: dsTextKilo,
    );
  }

  Widget action() {
    return Positioned(
      bottom: dsMedium,
      right: dsMedium,
      child: IconButton(
        onPressed: () => {},
        icon: Icon(
          Icons.play_arrow,
          size: ds2XLarge,
          color: dsGrey2,
        ),
      ),
    );
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.end,
    //   children: [
    //     Text(
    //       '00:14:06',
    //       style: dsTextKilo,
    //     ),
    //     IconButton(
    //       onPressed: () => {},
    //       icon: Icon(
    //         Icons.play_arrow,
    //         size: ds2XLarge,
    //         color: dsGrey2,
    //       ),
    //     ),
    //   ],
    // );
  }
}
