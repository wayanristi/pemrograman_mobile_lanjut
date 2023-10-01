import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Ni Wayan Risti",
            style: FooderlichTheme.darkTextTheme.bodyText1,
          ),
          const SizedBox(height: 20),
          Container(
            constraints: const BoxConstraints.expand(width: 350, height: 450),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/mag2.png"), 
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.book, color: Colors.white, size: 40),
                      const SizedBox(height: 8),
                      Text(
                        'Recipe Trends',
                        style: FooderlichTheme.darkTextTheme.headline2,
                      ),
                      const SizedBox(height: 30)
                    ],
                  ),
                ),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12,
                    children: [
                      Chip(
                        label: Text(
                          'Healthy',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.grey.withOpacity(0.7),
                        onDeleted: (){
                          print('delete');
                        },
                      ),
                      Chip(
                        label: Text(
                          'Vegan',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.grey.withOpacity(0.7),
                        onDeleted: (){
                          print('delete');
                        },
                      ),
                      Chip(
                        label: Text(
                          'Carrots',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.grey.withOpacity(0.7),
                        onDeleted: (){
                          print('delete');
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}