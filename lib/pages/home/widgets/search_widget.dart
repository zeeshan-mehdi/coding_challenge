

import 'package:coding_challenge/models/connections.dart';
import 'package:coding_challenge/pages/connections/connections_page.dart';
import 'package:coding_challenge/utitility/validation.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  var originController = TextEditingController();
  var destinationController = TextEditingController();
  var departureController = TextEditingController();
  var searchText = 'Search For Connections';
  var searchBtnText = 'Search';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(searchText,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        ),

        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(controller: originController ,
            decoration:const InputDecoration(
              hintText: 'Please Enter Origin',),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            controller: destinationController,
            decoration:const InputDecoration(
              hintText: 'Please Enter Destination',),
          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.all(18.0),
        //   child: TextField(controller: departureController,
        //   decoration:const InputDecoration(
        //     hintText: 'Please Enter Departure Time',),
        //  ),
        // ),

        ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
            onPressed:()=> onSearchPress(context),
            child: Text(searchBtnText)
        ),


      ],
    );
  }

  onSearchPress(context){
    var origin =  originController.text;
    var destination=  originController.text;
    var departureTime =  '10:20'; //

    if(Validation.validateString(origin) && Validation.validateString(destination)){
      Provider.of<Connections>(context,listen: false).lookForConnection(origin, destination, departureTime);
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ConnectionsPage()));
    }else {
      print('invalid string');
    }



  }




}
