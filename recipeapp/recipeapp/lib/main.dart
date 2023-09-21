import 'package:flutter/material.dart';
import 'package:recipeapp/recipe.dart';
import 'package:recipeapp/recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    }
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: 'Recipe Calculator By Ni Wayan Risti'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Recipe.sample.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RecipeDetail(recipe: Recipe.sample[index]);
                  }
                )
              );
            },
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Image.asset(Recipe.sample[index].imageUrl),
                    const SizedBox(height: 14.0),
                    Text(
                      Recipe.sample[index].label,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Palationo',
                      ),
                    ),
                  ],
                )
              ),
            ),
          );
        },
      )
    );
  }
}


