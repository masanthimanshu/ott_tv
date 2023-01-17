import 'package:ott_tv/view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(title: const Text("OTT TV App")),
        body: Column(
          children: const [
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Movies",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Web Series",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "TV Shows",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "News",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                children: [
                  FlutterGridView(),
                  FlutterGridView(),
                  FlutterGridView(),
                  FlutterGridView(),
                  FlutterGridView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
