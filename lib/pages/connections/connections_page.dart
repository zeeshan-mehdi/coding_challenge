import 'package:coding_challenge/models/connections.dart';
import 'package:coding_challenge/pages/connections/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConnectionsPage extends StatefulWidget {
  const ConnectionsPage({Key? key}) : super(key: key);

  @override
  _ConnectionsPageState createState() => _ConnectionsPageState();
}

class _ConnectionsPageState extends State<ConnectionsPage> {
  @override
  Widget build(BuildContext context) {
    var connections = context.watch<Connections>().connections;
    return Scaffold(
      appBar: AppBar(title: Text('Connections'),centerTitle: true,),
      body: ListView.builder(
          itemBuilder: (context, index){
            return ListItem(connection: connections[index],);
          },
          itemCount: connections.length,
      ),
    );
  }
}
