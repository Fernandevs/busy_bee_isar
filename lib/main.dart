import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:busy_bee/config/config.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const ProviderScope(child: BusyBee()));
}

class BusyBee extends StatefulWidget {
  const BusyBee({super.key});

  @override
  State<BusyBee> createState() => _BusyBeeState();
}

class _BusyBeeState extends State<BusyBee> {
  @override
  void initState() {
    super.initState();

    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routes,
      theme: AppTheme.theme,
      title: 'Busy Bee',
    );
  }
}
