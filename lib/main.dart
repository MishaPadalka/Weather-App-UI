import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Inter"),
      home: Scaffold(
        //appBar: _appBar(),
        body: _buildBody(), backgroundColor: Colors.blue.shade300,
      ),
    );
  }
}

AppBar _appBar() {
  return AppBar(
    title: Text(
      "Weather Forecast",
    ),
    backgroundColor: Colors.blue.shade300,
  );
}

Widget _buildBody() {
  return SingleChildScrollView(
      child: Column(
    children: <Widget>[
      Container(
          child: Text(
            "Weather Forecast",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          margin: EdgeInsets.only(top: 35.0),
          alignment: Alignment.center),
      _searchWeather(),
      _cityWeather(),
      _time(),
      SizedBox(height: 30),
      _weather(),
      SizedBox(height: 40),
      _nexthours(),
      //SizedBox(height:10),
      _nextDays(),
    ],
  ));
}

Widget _searchWeather() {
  return Padding(
    padding: EdgeInsets.only(top: 30, left: 20),
    child: Row(
      children: <Widget>[
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        SizedBox(width: 16),
        Text("Enter city name", style: TextStyle(color: Colors.white, fontSize: 16))
      ],
    ),
  );
}

Widget _cityWeather() {
  return Padding(
    padding: EdgeInsets.only(top: 20),
    child: Center(
      child: Text(
        "Sumy Oblast, UA",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    ),
  );
}

Widget _time() {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: Center(
      child: Text(
        "Thursday, June 30, 2022",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    ),
  );
}

Widget _weather() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.wb_sunny,
        size: 100,
        color: Colors.white,
      ),
      SizedBox(
        width: 16,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "30°C",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          Text(
            'Sunny',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    ],
  );
}

Row _nextWeather() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(children: [
        Icon(Icons.cloud, color: Colors.white, size: 25),
      ]),
      Column(children: [
        Icon(Icons.wb_sunny, color: Colors.white, size: 25),
      ]),
      Column(children: [
        Icon(Icons.wb_sunny, color: Colors.white, size: 25),
      ]),
    ],
  );
}

Widget _nexthours() {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
    height: 90,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Column(
          children: [
            Text('Now', style: TextStyle(color: Colors.white, fontSize: 13)),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.wb_sunny, color: Colors.white, size: 25),
            SizedBox(
              height: 10,
            ),
            Text('30', style: TextStyle(color: Colors.white, fontSize: 13)),
          ],
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          children: [
            Text('13', style: TextStyle(color: Colors.white, fontSize: 13)),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.wb_sunny, color: Colors.white, size: 25),
            SizedBox(
              height: 10,
            ),
            Text('30', style: TextStyle(color: Colors.white, fontSize: 13)),
          ],
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          children: [
            Text('14', style: TextStyle(color: Colors.white, fontSize: 13)),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.wb_sunny, color: Colors.white, size: 25),
            SizedBox(
              height: 10,
            ),
            Text('31', style: TextStyle(color: Colors.white, fontSize: 13)),
          ],
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          children: [
            Text('15', style: TextStyle(color: Colors.white, fontSize: 13)),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.wb_sunny, color: Colors.white, size: 25),
            SizedBox(
              height: 10,
            ),
            Text('31', style: TextStyle(color: Colors.white, fontSize: 13)),
          ],
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          children: [
            Text('16', style: TextStyle(color: Colors.white, fontSize: 13)),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.cloud, color: Colors.white, size: 25),
            SizedBox(
              height: 10,
            ),
            Text('28', style: TextStyle(color: Colors.white, fontSize: 13)),
          ],
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          children: [
            Text('17', style: TextStyle(color: Colors.white, fontSize: 13)),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.cloud, color: Colors.white, size: 25),
            SizedBox(
              height: 10,
            ),
            Text('27', style: TextStyle(color: Colors.white, fontSize: 13)),
          ],
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          children: [
            Text('18', style: TextStyle(color: Colors.white, fontSize: 13)),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.air, color: Colors.white, size: 25),
            SizedBox(
              height: 10,
            ),
            Text('25', style: TextStyle(color: Colors.white, fontSize: 13)),
          ],
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          children: [
            Text('19', style: TextStyle(color: Colors.white, fontSize: 13)),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.air, color: Colors.white, size: 25),
            SizedBox(
              height: 10,
            ),
            Text('24', style: TextStyle(color: Colors.white, fontSize: 13)),
          ],
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          children: [
            Text('20', style: TextStyle(color: Colors.white, fontSize: 13)),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.air, color: Colors.white, size: 25),
            SizedBox(
              height: 10,
            ),
            Text('24', style: TextStyle(color: Colors.white, fontSize: 13)),
          ],
        ),
      ],
    ),
  );
}

Widget _nextDays() {
  return Container(
    height: 300,
    padding: EdgeInsets.only(left: 20, right: 20),
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Row(children: [
          Text(
            'Saturday',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            width: 90,
          ),
          Icon(Icons.cloud, color: Colors.white, size: 22),
          SizedBox(
            width: 90,
          ),
          Text(
            '24',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ]),
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Text(
            'Sunday',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            width: 101,
          ),
          Icon(Icons.wb_sunny, color: Colors.white, size: 22),
          SizedBox(
            width: 92,
          ),
          Text(
            '29',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ]),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Monday',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              width: 96,
            ),
            Icon(Icons.wb_sunny, color: Colors.white, size: 22),
            SizedBox(
              width: 92,
            ),
            Text(
              '30',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Tuesday',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              width: 92,
            ),
            Icon(Icons.wb_sunny, color: Colors.white, size: 22),
            SizedBox(
              width: 92,
            ),
            Text(
              '30',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ],
    ),
  );
}
