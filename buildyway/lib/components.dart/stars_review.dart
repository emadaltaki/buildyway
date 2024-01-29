import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StarsReviews extends StatefulWidget {
  const StarsReviews({super.key});

  @override
  State<StarsReviews> createState() => _StarsReviewsState();
}

List<bool> isSelected = [false, false, false, false, false];
List<double> ratings = [2, 3, 5];

class _StarsReviewsState extends State<StarsReviews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return IconButton(
            onPressed: () {
              setState(() {
                for (int i = 0; i < isSelected.length; i++) {
                  if (i <= index) {
                    isSelected[i] = true;
                  } else {
                    isSelected[i] = false;
                  }
                }
              });
            },
            icon: Icon(
              Icons.star,
            ),
            color: isSelected[index] ? Colors.amber : Colors.black,
          );
        },
      ),
    );
  }
}
