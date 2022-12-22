import 'package:flutter/material.dart';
import 'package:kopiloe_android/util/coffee_tile.dart';
import 'package:kopiloe_android/util/coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List coffeeType = [
    [
      "Minuman",
      true
    ],
    [
      "Makanan",
      false
    ],
    [
      "Dessert",
      false
    ]
  ];

  // user tapped on coffee types
  void coffeeTypeSelected (int index) {
    setState(() {

      for(int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }

      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.white),
            label: ''
          ),
        ],
      ),
      body: Column(
        children: [
          // Find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Selamat datang di KopiLoe.",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 25.0,),
          
          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Ayoo.. Cari Minuman Kesukaan Mu.",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),

          SizedBox(height: 25.0,),

          // horizontal listview of coffee types
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  coffeeType: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: () {
                    coffeeTypeSelected(index);
                  },
                );
              }
            ),
          ),

          // Horizontal listview of coffee tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [  
                CoffeeTile(
                  coffeeImagePath: "lib/images/affogato.jpg",
                  coffeeName: "Affogato",
                  coffeePrice: "Rp. 15.000",
                ),
                CoffeeTile(
                  coffeeImagePath: "lib/images/americano.jpg",
                  coffeeName: "Americano",
                  coffeePrice: "Rp. 10.000",
                ),
                CoffeeTile(
                  coffeeImagePath: "lib/images/choco.jpg",
                  coffeeName: "Choco",
                  coffeePrice: "Rp. 13.000",
                ),
              ]
            )
          ),

        ],
      ),
    );
  }
}