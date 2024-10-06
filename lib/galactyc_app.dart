import 'package:flutter/material.dart';

import 'routes/routes.dart';
import 'themes/theme.dart';

class GalactycApp extends StatelessWidget {
  const GalactycApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galactyc App Ui',
      theme: darkTheme,
      routes: routes
    );
  }
}
