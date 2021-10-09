import 'package:flutter/material.dart';
import 'package:pokedex/modules/Home/view/home_page.dart';
import 'package:pokedex/core/dependency_injection/injection_container.dart' as dependence_injection;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependence_injection.init();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}