import 'package:flutter/material.dart';
import 'package:reto1_donut_app_jesus_dzul/tab/burger_tab.dart';
import 'package:reto1_donut_app_jesus_dzul/tab/donut_tab.dart';
import 'package:reto1_donut_app_jesus_dzul/tab/pancake_tab.dart';
import 'package:reto1_donut_app_jesus_dzul/tab/pizza_tab.dart';
import 'package:reto1_donut_app_jesus_dzul/tab/smoothie_tab.dart';
import 'package:reto1_donut_app_jesus_dzul/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png'),
    //burger tab
    const MyTab(iconPath: 'lib/icons/burger.png'),
    //smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    //pancakes tab
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left:24.0),
            child: IconButton(icon: Icon(Icons.menu, color: Colors.grey[800], size:36), onPressed: () { 
              print('Boton de Menu');
             },)
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(right:24.0),
            child: IconButton(icon: Icon(Icons.person , color:Colors.grey[800], size:36), onPressed: () { 
              print('Gracias');
             },),
          )],
        ),
        body: Column(children: [
          //Texto "I want to Eat"
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text('I want to ', style: TextStyle(fontSize: 32),),
                Text('Duolingo', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
              ],
            ),
          ),
          //Tap Bar
          TabBar(tabs: myTabs),
          //Tap Bar view
          Expanded(
            child: TabBarView(children: [
              //Donut Tap
              DonutTab(),
              //Donut Tap
              BurgerTab(),
              //Donut Tap
              SmoothieTab(),
              //Donut Tap
              PancakeTab(),
              //Donut Tap
              PizzaTab(),
            ]),
          ),
        ],),
      ),
    );
  }
}