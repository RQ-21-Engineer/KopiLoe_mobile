import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // coffee image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(coffeeImagePath),
            ),

            // coffee name
            Padding(
              padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    "with italian chocolate & new zealand milk",
                    style: TextStyle(color: Colors.grey[700]),
                  ),

                  // coffee price
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          coffeePrice, 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  )
                  
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}