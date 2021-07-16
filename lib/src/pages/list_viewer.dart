import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scaffold_providers_app/src/models/User.dart';
/// This is the main application widget.
class ListViewer extends StatelessWidget {

  final Future<User> users;

  ListViewer({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<User>(
          future: users,
          builder: (context, snapshot){
            if(snapshot.hasData){
               
              return ListView.builder(
                itemCount: snapshot.data!.results.length,
                itemBuilder: (BuildContext context, int index){
                  String gender = snapshot.data!.results.elementAt(index).gender;
                  return Card(
                    child: ListTile(
                      tileColor: gender == 'male' ? Colors.blue[100] : Colors.pink[100],
                      leading: ImageViewCustom(URL: snapshot.data!.results.elementAt(index).picture.thumbnail),
                      title: Text("${snapshot.data!.results.elementAt(index).name.title}"+
                      "${snapshot.data!.results.elementAt(index).name.first}"+
                      "${snapshot.data!.results.elementAt(index).name.last}"),
                      subtitle: Text('Username: ${snapshot.data!.results.elementAt(index).login.username}.' +
                      ' Email: ${snapshot.data!.results.elementAt(index).email}.'+
                      ' Phone: ${snapshot.data!.results.elementAt(index).phone}'),
                      ),
                  );
                },
              );
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }
            throw Exception();
          },
        )
      );
  }
}

class ImageViewCustom extends StatelessWidget{
  
  const ImageViewCustom({
    Key? key,
    required this.URL
  }): super(key: key);

  final String URL;
  
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(this.URL),
    );
  }

}



/// This is the private State class that goes with MyStatefulWidget.
/* class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  final items = List<String>.generate(10000, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amberAccent,
              child: Center(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Entrada: ${items[index]}'),
                ),
              ),
            );
          }
        )
      )
    );
  }
}
 */