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
    return GridView.builder(
      itemCount: 25,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (e, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const MovieScreen(),
              ),
            );
          },
          child: Card(
            child: Image.network(
              "https://images.unsplash.com/photo-1485893226355-9a1c32a0c81e",
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
