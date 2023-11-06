import 'package:flutter/material.dart';

import 'ListItem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Chicago',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ExploreChicago(),
    );
  }
}

class ExploreChicago extends StatefulWidget {
  @override
  _ExploreChicagoState createState() => _ExploreChicagoState();
}

class _ExploreChicagoState extends State<ExploreChicago>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabs = ['Restaurants', 'Sports Teams', 'Attractions'];

  // restaurants data list
  List<ListItem> restaurants = [
    ListItem(
        title: 'Fry The Coop',
        address: '1529 W Chicago Ave, Chicago, IL 60642',
        imagePath: 'assets/images/restaurants/fry.jpeg',
        likes: 0,
        dislikes: 0),
    ListItem(
        title: 'Ciccio Mio',
        address: '226 W Kinzie St, Chicago, IL 60654',
        imagePath: 'assets/images/restaurants/ciccio.jpeg',
        likes: 0,
        dislikes: 0),
    ListItem(
        title: 'Soju BBQ',
        address: '36 S Ashland Ave, Chicago, IL 60607',
        imagePath: 'assets/images/restaurants/soju.jpeg',
        likes: 0,
        dislikes: 0),
    ListItem(
        title: 'Francesca\'s',
        address: '200 E Chestnut St, Chicago, IL 60611',
        imagePath: 'assets/images/restaurants/francescas.jpeg',
        likes: 0,
        dislikes: 0),
    ListItem(
        title: 'HOLU',
        address: '2101 S Jefferson St, Chicago, IL 60616',
        imagePath: 'assets/images/restaurants/holu.jpeg',
        likes: 0,
        dislikes: 0),
  ];

  // sports team data list
  List<ListItem> sportsTeams = [
    ListItem(
      title: 'Chicago Bears',
      address: 'Soldier Field 1410 Special Olympics Dr, Chicago, IL 60605',
      imagePath: 'assets/images/chicago_bears.png',
      likes: 0,
      dislikes: 0,
    ),
    ListItem(
      title: 'Chicago Blackhawks',
      address: 'United Center 1901 W Madison St, Chicago, IL 60612',
      imagePath: 'assets/images/chicago_blackhawks.jpeg',
      likes: 0,
      dislikes: 0,
    ),
    ListItem(
      title: 'Chicago Bulls',
      address: 'United Center 1901 W Madison St, Chicago, IL 60612',
      imagePath: 'assets/images/chicago_bulls.png',
      likes: 0,
      dislikes: 0,
    ),
    ListItem(
      title: 'Chicago Cubs',
      address: 'Wrigley Field 1060 W Addison St, Chicago, IL 60613',
      imagePath: 'assets/images/chicago_cubs.jpeg',
      likes: 0,
      dislikes: 0,
    ),
    ListItem(
      title: 'Chicago White Sox',
      address: 'Guaranteed Rate Field 333 W 35th St, Chicago, IL 60616',
      imagePath: 'assets/images/chicago_whitesoxs.png',
      likes: 0,
      dislikes: 0,
    )
  ];

  // attractions data list
  List<ListItem> attractions = [
    ListItem(
      title: 'Art Institute',
      address: '111 S Michigan Ave, Chicago, IL 60603',
      imagePath: 'assets/images/attractions/art.jpeg',
      likes: 0,
      dislikes: 0,
    ),
    ListItem(
      title: 'Millennium Park',
      address: '201 E Randolph St, Chicago, IL 60602',
      imagePath: 'assets/images/attractions/millenium_park.jpeg',
      likes: 0,
      dislikes: 0,
    ),
    ListItem(
      title: 'Museum Of Contemporary Art',
      address: '220 E Chicago Ave, Chicago, IL 60611',
      imagePath: 'assets/images/attractions/mca.jpeg',
      likes: 0,
      dislikes: 0,
    ),
    ListItem(
      title: 'Navy Pier',
      address: '600 E Grand Ave, Chicago, IL 60611',
      imagePath: 'assets/images/attractions/navy_pier.jpeg',
      likes: 0,
      dislikes: 0,
    ),
    ListItem(
      title: 'Skydeck Chicago',
      address: '233 S Wacker Dr, Chicago, IL 60606',
      imagePath: 'assets/images/attractions/skydeck.jpeg',
      likes: 0,
      dislikes: 0,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          '                      Explore Chicago',
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/flexbarBackground.jpeg"),
                  fit: BoxFit.fill,
                )),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildTabContent(
              restaurants),

          _buildTabContent(
              sportsTeams),

          _buildTabContent(
              attractions)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Currently viewing ${tabs[_tabController.index]}'),
            action: SnackBarAction(
              label: 'Dismiss',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(); // This will hide the snackbar
              },
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Icon(Icons.info),
      ),
    );
  } // end build

  // used to build each tab's content
  Widget _buildTabContent(List<ListItem> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 25.0,
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 8, top: 8),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          color: Colors.white70,
          child: ListTile(
            leading: Image.asset(items[index].imagePath, fit: BoxFit.fill,),
            title: Text(
              items[index].title,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              items[index].address,
              style: TextStyle(fontSize: 10),
              maxLines: 2,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    icon: const Icon(Icons.thumb_up, color: Colors.blue),
                    onPressed: () {
                      setState(() {
                        items[index].likes++;
                      });
                    }),
                Text(items[index].likes.toString()),
                IconButton(
                    icon: const Icon(Icons.thumb_down, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        items[index].dislikes++;
                      });
                      // Add logic for thumbs down here
                    }),
                Text(items[index].dislikes.toString()),
              ],
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text('You clicked on ${items[index].title}'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('OK'))
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
