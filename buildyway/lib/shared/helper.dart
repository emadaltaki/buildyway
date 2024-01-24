import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> configNavigatorKey =
    GlobalKey<NavigatorState>();
double getScreenWidth(final BuildContext context) =>
    MediaQuery.of(context).size.width;
double getScreenHeight(final BuildContext context) =>
    MediaQuery.of(context).size.height;
