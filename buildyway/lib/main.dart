import 'package:buildyway/models/providers/providers.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';
import 'routes/routes.dart';
import 'shared/constants/styles.dart';

//ENV file
// Future<void> main() async {
//   await dotenv.load(fileName: "env");
//   usePathUrlStrategy();
//   runApp(const MyApp());
// }
Future<void> main() async {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({final Key? key}) : super(key: key);
  @override
  Widget build(final BuildContext context) => MultiProvider(
        providers: <ChangeNotifierProvider<dynamic>>[
          ChangeNotifierProvider<ProviderTest>(
            create: (final _) => ProviderTest(),
          ),
        ],
        child: MaterialApp.router(
          title: 'BuildyWay | by Altakis\'s',
          debugShowCheckedModeBanner: false,
          themeAnimationDuration: Duration.zero,
          theme: ThemeData(
            scrollbarTheme: const ScrollbarThemeData(
              thumbColor: MaterialStatePropertyAll<Color>(activeBlueColor),
            ),
          ),
          routerConfig: getRouterConfig(),
        ),
      );
}
