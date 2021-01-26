
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:time_picker/main_screen/News.dart';
import 'package:time_picker/main_screen/Songs.dart';
import 'package:time_picker/main_screen/Tv.dart';
import 'package:time_picker/main_screen/Video.dart';
import 'package:time_picker/Multidrawer_Screen/sidebar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  Widget popupMenuButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                //builder: (context) => notificationsettings())
            ), );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(Icons.more_vert, size: 35.0,),
          ],
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title:
          Image.network(
            'https://image.shutterstock.com/image-photo/founder-word-written-on-wood-600w-1369020938.jpg',
            width: 180,
            height: 160,
          ),
          actions: <Widget>[
            popupMenuButton(),
          ],
          bottom:
          TabBar(
            indicatorColor: Colors.red, isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text('latest Videos',
                ),
              ),
              Tab(
                text: (' Songs  '),
              ),
              Tab(
                text:('Telivision '),
              ),
              Tab(
                text:('News '),
              ),
            ],
          ),
        ),
        drawer: sidebar(),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: TabBarView(
              children: [
             Songs(),//create page and initialize here
                Video(),
                Tv(),
               News(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
