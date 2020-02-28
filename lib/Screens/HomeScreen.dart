import 'package:flutter/material.dart';
import 'package:telegram/Models/Chart_model.dart';
import 'DrawerScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: ListView.separated(
          itemBuilder: (ctx, i) {
            return ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(items[i].profileUrl),
              ),
              title: Text(items[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(items[i].message),
              trailing: Text(items[i].time),

            );
          },
          separatorBuilder: (ctx, i) {
            return Divider();
          },
          itemCount: items.length),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.create,color: Colors.white,),
            backgroundColor: Color(0xFF65a9e0),
            onPressed: (){}),
    );
  }
}
