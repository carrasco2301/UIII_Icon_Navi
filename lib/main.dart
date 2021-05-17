import 'package:flutter/material.dart';

void main() => runApp(CarrascoApp());

class CarrascoApp extends StatefulWidget {
  @override
  _CarrascoAppState createState() => _CarrascoAppState();
} //Fin de clase CarrascoApp

class _CarrascoAppState extends State<CarrascoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
} //fin de clase _CarrascoAppState

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} //fin de clase principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //fin de Inicioar estado con 5 tab icons

  Widget card(String text) {
    return Card(
      color: Colors.blueGrey,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //fin de tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //fin de tab enviando texto y el icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars CarrascoApp"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Tarjeta inicio mi casa"),
          card("Tarjeta2"),
          card("Tarjeta3"),
          card("Tarjeta4"),
          card("Tarjeta5"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Casa", Icon(Icons.home)),
          tab("wifi", Icon(Icons.wifi)),
          tab("camara", Icon(Icons.camera)),
          tab("ajustes", Icon(Icons.settings)),
          tab("atm", Icon(Icons.atm)),
        ],
      ),
    ); //fin de scaffrold
  } //fin de widget
} //fin clase _PrincipalState
