import 'package:get/get.dart';

import './screens/liter_screen.dart';
import './screens/nominal_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cashless Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Saldo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Rp 1.000.000',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                ),
              ),
              TabBar(
                labelColor: Colors.red,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    icon: FaIcon(FontAwesomeIcons.moneyBillWave),
                    text: 'Nominal',
                  ),
                  Tab(
                    icon: FaIcon(FontAwesomeIcons.gasPump),
                    text: 'Liter',
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: TabBarView(
                  children: [
                    NominalScreen(),
                    LiterScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
