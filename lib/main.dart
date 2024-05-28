import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:xlo_mobx/screens/base/base_screen.dart';
import 'package:xlo_mobx/stores/page_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(const MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'C5ynrpFBlGbkfMxp0d0JFlNxSSXG7bBHSGcy2jqL',
    'https://parseapi.back4app.com/',
    clientKey: '5wJXmbkPxPYssgO2p5NnjM7JFaaHA0RDhmBSWgqf',
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.purple,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.purple,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: Colors.orange),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.purple),
      home: BaseScreen(),
    );
  }
}
