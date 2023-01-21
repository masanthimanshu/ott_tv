import 'package:flutter/material.dart';
import 'package:ott_tv/movie_screen.dart';

class FlutterGridView extends StatefulWidget {
  const FlutterGridView({Key? key}) : super(key: key);

  @override
  State<FlutterGridView> createState() => _FlutterGridViewState();
}

class _FlutterGridViewState extends State<FlutterGridView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: InkWell(
              focusColor: Colors.redAccent[100],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MovieScreen(),
                  ),
                );
              },
              child: const Card(
                child: Center(
                  child: Text(
                    "Top Card",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              itemCount: 30,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (e, index) {
                return InkWell(
                  focusColor: Colors.redAccent[100],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MovieScreen(),
                      ),
                    );
                  },
                  child: Card(
                    child: Center(
                      child: Text(
                        "Card $index",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
