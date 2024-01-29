import 'package:buildyway/components.dart/stars_review.dart';
import 'package:buildyway/models/user_info.dart';
import 'package:buildyway/shared/constants/styles.dart';
import 'package:buildyway/shared/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UsersContainer extends StatelessWidget {
  UserInfo userInfo;
  UsersContainer({
    super.key,
    required this.userInfo,
  });

  @override
  Widget build(BuildContext context) {
    double width = getScreenWidth(context);
    double height = getScreenHeight(context);
    return Container(
      margin: EdgeInsets.only(
        top: height * 0.05,
        left: width * 0.05,
        right: width * 0.05,
      ),
      width: width * 0.6,
      height: height * .5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [Text(userInfo.firstName), StarsReviews()],
      ),
    );
  }
}
