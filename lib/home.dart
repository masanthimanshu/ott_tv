import 'package:ott_tv/view.dart';
import 'package:ott_tv/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("OTT TV App"),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Profile(),
                    ),
                  );
                },
                icon: const Icon(Icons.person),
              ),
            ),
          ],
        ),
        body: Column(
          children: const [
            TabBar(
              isScrollable: true,
              indicatorColor: Colors.red,
              labelPadding: EdgeInsets.symmetric(
                horizontal: 50,
              ),
              tabs: [
                Tab(child: Text("Home")),
                Tab(child: Text("Movies")),
                Tab(child: Text("Web Series")),
                Tab(child: Text("TV Shows")),
                Tab(child: Text("News")),
              ],
            ),
            SizedBox(height: 10),
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
