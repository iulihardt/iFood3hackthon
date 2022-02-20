import 'package:flutter/material.dart';
import 'package:ifood_hackathon/shared/tabs/Ichef_tab.dart';
import 'package:ifood_hackathon/shared/tabs/restaurante_tab.dart';
import 'package:ifood_hackathon/shared/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TabViews = [
    RestauranteTab(),
    Container(),
    IchefTab(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Inicio"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Busca"),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_outlined), label: "Pedidos"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Pedidos"),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Seu endereço, 000",
            style: TextStyle(color: Colors.black54),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.qr_code_scanner,
                color: AppColors.primaryRed,
              ),
            ),
          ],
          bottom: TabBar(
            padding: EdgeInsets.all(5),
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            labelColor: AppColors.primaryRed,
            onTap: (index) {
              setState(() {
                tabIndex = index;
              });
            },
            unselectedLabelColor: Colors.black45,
            isScrollable: true,
            tabs: const [
              Tab(text: "Restaurante"),
              Tab(text: "Mercados"),
              Tab(text: "Ichef"),
              Tab(text: "Bebidas"),
              Tab(text: "Farmácia"),
              Tab(text: "Express"),
            ],
          ),
        ),
        body: TabViews[tabIndex],
      ),
    );
  }
}
