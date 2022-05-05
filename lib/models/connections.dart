import 'package:flutter/cupertino.dart';

import 'connection.dart';

class Connections extends ChangeNotifier{
  List<Connection> connections = [];

  lookForConnection(origin,destination,departureTime){
    //idealy it should make a backend request here.
    //but i am returning dummy date for now.

    var connection = Connection('Friehatshalle','SonnenPlatz','Bus 1','10:30');
    connections.add(connection);
    connection = Connection('Friehatshalle','BirlinarPlatz','Bus 2','10:40');
    connections.add(connection);
    connection = Connection('Hocshule','Hauptbahnhauf','Bus 2','10:40');
    connections.add(connection);
    connection = Connection('BirlinarPlatz','Dr Enders','Bus 3','10:50');
    connections.add(connection);
    connection = Connection('HofBad','untressau','Bus 4','11:20');
    connections.add(connection);
    notifyListeners();

  }

  resetSearch(){
    connections = [];
    notifyListeners();
  }



}