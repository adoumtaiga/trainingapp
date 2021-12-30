
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:trainingapp/bank_account.dart';
import 'package:trainingapp/boxes.dart';
import 'package:trainingapp/pages/add.dart';
import 'package:trainingapp/pages/aficher_details.dart';
import 'package:trainingapp/pages/carousselpage.dart';
import 'package:trainingapp/pages/dashboard.dart';

late Box box;
Future <void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BankAccountAdapter());
  await Hive.openBox<BankAccount>(HiveBoxes.bank);
  //box.put('bankAccount', BankAccount(currency: "USD", myMoney: 1000000));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings)=>RouteGenerator.generateRoute(settings),
      debugShowCheckedModeBanner: false,
      title: 'CamTour',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/' : return MaterialPageRoute(builder: (context)=> const DashboardPage(title: 'Dashboard'));
      case '/details':
        var arguments = settings.arguments;
        if (arguments != null) {
          return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => AfficherDetails(arguments as BankAccount),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                animation = CurvedAnimation(curve: Curves.ease, parent: animation);
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              }
          );
        } else {
          return pageNotFound();
        }
      case '/add':
        return MaterialPageRoute(builder: (context)=>const AddPage(title: 'Add'));
      case '/carousel':
        return MaterialPageRoute(builder: (context)=> const CarousselPage());
      default:
        return MaterialPageRoute(builder: (context)=> Scaffold(
          appBar: AppBar(title: const Text("Error"), centerTitle: true,),
        ));
    }
  }

  static MaterialPageRoute pageNotFound() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
            appBar: AppBar(title:const Text("Error"), centerTitle: true),
            body: const Center(
              child: Text("Page not found"),
            )
        )
    );
  }
}


