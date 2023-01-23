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
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (e, index) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
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
                    child: Card(
                      child: Center(
                        child: Text(
                          "Top Card ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: const [
                Text(
                  "Latest Movies",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (e, index) {
                return SizedBox(
                  width: 200,
                  height: 200,
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
                    child: Card(
                      child: Center(
                        child: Text(
                          "Top Card ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: const [
                Text(
                  "Top Shows",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (e, index) {
                return SizedBox(
                  width: 200,
                  height: 200,
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
                    child: Card(
                      child: Center(
                        child: Text(
                          "Top Card ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: const [
                Text(
                  "Featured Shows",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (e, index) {
                return SizedBox(
                  width: 200,
                  height: 200,
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
                    child: Card(
                      child: Center(
                        child: Text(
                          "Top Card ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
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
