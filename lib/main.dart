import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var brightnes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather",
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          iconTheme: IconThemeData(color: Colors.black54),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _weatherDescription(),
          ],
          ),
        ),
        ),
      ],
    ),
  );
}

Image _headerImage(){
  return Image(
    
    image: NetworkImage('https://images.wallpaperscraft.ru/image/single/pejzazh_gory_art_140515_480x800.jpg'),
    fit: BoxFit.cover,
    height: 480,
    width: 480,
  
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children:<Widget> [
    Text(
      'Tuesday - October 24 ',
      style: TextStyle(
        //color: Colors.white30,
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    Divider(),
    Text(
      'Lkskskskssmmtmtm psppspspdkldkfmngng pslsjkfhfghfgtbn, ddddddddddddddddd. GGGGGGGGGGGGGGGGGGGGG. Gffffffffffmmmmmmmmm,cmmmmmm.',
      style: TextStyle(color: Colors.black54),
    )
  ],
  );
}