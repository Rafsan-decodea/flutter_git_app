import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 200.0,
                    elevation: 0,
                    pinned: false,
                    flexibleSpace: Stack(
                      fit: StackFit.loose,
                      children: [
                        _buildGradientBox(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.network(
                                    'https://basmo.app/wp-content/uploads/2021/09/reading-20-minutes-a-day.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Start\n Learning ",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: _buildSearchBox(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(
                          title: Text('List item $index'),
                        );
                      },
                      childCount: 20,
                    ),
                  ),
                  // Add additional slivers or content as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGradientBox() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    );
  }
}

Widget _buildSearchBox() {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onChanged: (value) {
        // Handle the search query here
      },
    ),
  );
}

Widget _buildGradientBox(bool innerBoxIsScrolled) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: innerBoxIsScrolled
            ? [Colors.orange, Colors.yellow] // Change colors when scrolled
            : [Colors.blue, Colors.green],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ),
    ),
  );
}
