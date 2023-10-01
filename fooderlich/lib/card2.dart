import 'package:flutter/material.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              "Ni Wayan Risti",
              style: FooderlichTheme.lightTextTheme.bodyText1,
            ),
          const SizedBox(height: 20),
            AuthorCard(
              authorName: "Mike Katz",
              title: "Smoothie Connoisseur",
              imageProvider: AssetImage("assets/author_katz.jpeg"),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      "Recipe by",
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                    bottom: 60,
                    right: 16,
                  ),
                  Positioned(
                    child: Text(
                      "Ni Wayan Risti",
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                    bottom: 16,
                    right: 16,
                  ),
                  Positioned(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Smoothies",
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ), 
                    ),
                    bottom: 70.0,
                    left: 16.0,
                  ),
                ],
              ),
            ),
          ],
        ),
        constraints: const BoxConstraints.expand(width: 350.0, height: 450.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mag5.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}