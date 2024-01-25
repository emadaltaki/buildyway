import 'package:buildyway/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../shared/helper.dart';
import 'pages.dart';

GoRouter getRouterConfig() => GoRouter(
        initialLocation: '/',
        navigatorKey: configNavigatorKey,
        routes: <RouteBase>[
          GoRoute(
            path: Pages.dashboard.route,
            name: Pages.dashboard.name,
            builder: (final BuildContext context, final GoRouterState state) =>
                const Dashboard(),
          ),
        ]);
    

//TODO: add login page
// Widget pageFutureBuilder(
//   final BuildContext context,
//   final Widget pageComponent,
// ) {
//   if (context.read<AccessTokenProvider>().accessToken == null) {
//     return FutureBuilder<String?>(
//       future: login(false, context),
//       builder: (final BuildContext context, final AsyncSnapshot<String?> data) {
//         if (data.hasError) {
//           return Text("${data.error}");
//         } else if (data.hasData) {
//           return pageComponent;
//         } else {
//           return Container();
//         }
//       },
//     );
//   } else {
//     return pageComponent;
//   }
// }
