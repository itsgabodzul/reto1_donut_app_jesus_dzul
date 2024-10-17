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
      // Donut tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/donut.png')),
      text: 'Donuts', // Nombre del tab
    ),

    // Burger tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/burger.png')),
      text: 'Burgers', // Nombre del tab
    ),

    // Smoothie tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/smoothie.png')),
      text: 'Smoothies', // Nombre del tab
    ),

    // Pancake tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/pancakes.png')),
      text: 'Pancakes', // Nombre del tab
    ),

    // Pizza tab
    const Tab(
      icon: ImageIcon(AssetImage('lib/icons/pizza.png')),
      text: 'Pizzas', // Nombre del tab
    ),
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
           // New Section: Items Summary and View Cart Button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text for items and price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 Items | \$45',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Delivery Charges Included',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      // View Cart button
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para ver el carrito
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[400], // Color rosa
                        ),
                        child: Text(
                          'View Cart',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),)
        ],),
      ),
    );
  }
}