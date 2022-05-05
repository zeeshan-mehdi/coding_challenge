import 'package:flutter/material.dart';

import '../../../models/connection.dart';

class ListItem extends StatelessWidget {
  final Connection? connection;
  const ListItem({Key? key,this.connection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(connection!.origin),
      subtitle: Text(connection!.destination),
      trailing: Text(connection!.busNumber),
    );
  }
}
