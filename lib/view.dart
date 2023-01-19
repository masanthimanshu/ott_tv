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
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
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
            child: Image.asset(
              "assets/images/ganpati.png",
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
