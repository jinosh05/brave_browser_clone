import 'package:brave_browser_clone/provider/app_provider.dart';
import 'package:brave_browser_clone/provider/drawer_provider.dart';
import 'package:brave_browser_clone/screens/dummy.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../configs/core_theme.dart' as theme;
import 'configs/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => DrawerProvider())
      ],
      child: Consumer<AppProvider>(
        builder: (context, value, _) => MaterialChild(
          provider: value,
        ),
      ),
    );
  }
}

class MaterialChild extends StatefulWidget {
  const MaterialChild({super.key, required this.provider});
  final AppProvider provider;

  @override
  State<MaterialChild> createState() => _MaterialChildState();
}

class _MaterialChildState extends State<MaterialChild> {
  void initAppTheme() {
    final appProviders = AppProvider.state(context);
    appProviders.init();
  }

  @override
  void initState() {
    initAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.themeLight,
      darkTheme: theme.themeDark,
      themeMode: widget.provider.themeMode,

      ///
      /// We have to init the App before going to anyscreen and
      /// it must be inside MaterialApp.
      /// This builder does the work
      ///
      builder: (context, child) {
        App.init(context);
        return child!;
      },
      home: const Dummy(),
    );
  }
}
