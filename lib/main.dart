import 'package:flutter/material.dart';
import 'data_service.dart';
import 'model.dart';

/*void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  // final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  //   onPrimary: Colors.black87,
  //   primary: Colors.grey[300],
  //   minimumSize: Size(88, 36),
  //   padding: EdgeInsets.symmetric(horizontal: 16),
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(2)),
  //   ),
  // );
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  WeatherResponse _response;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  if(_response != null)
              Column(
          children: [
          Image.network(_response.iconUrl),
          Text(
            '${_response.tempInfo.temperature}°',
            style: TextStyle(fontSize: 40),
          ),
          Text(_response.weatherInfo.description)
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: SizedBox(
            width: 150,
            child: TextField(
              controller: _cityTextController,
              decoration: InputDecoration(labelText: 'City'),
              textAlign: TextAlign.center),
            ),
          ),
                    FlatButton(onPressed: (){
                      _search();
                    },child: Text("amsdcsm"),),
                    // ElevatedButton(
                    //   style: raisedButtonStyle,
                    //   onPressed: () { },
                    //   child: Text('Looks like a RaisedButton'),
                    // )
                  ],
              ),
          ),
        ));
    }


    void _search() async {
  final response = await _dataService.getWeather(_cityTextController.text);
  setState(() => _response = response);
  }
}*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  WeatherResponse _response;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_response != null)
                  Column(
                    children: [
                      Image.network(_response.iconUrl),
                      Text(
                        '${_response.tempInfo.temperature}°',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(_response.weatherInfo.description)
                    ],
                  ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: SizedBox(
                    width: 150,
                    child: TextField(
                        controller: _cityTextController,
                        decoration: InputDecoration(labelText: 'City'),
                        textAlign: TextAlign.center),
                  ),
                ),
                FlatButton(onPressed: _search, child: Text('Search'))
              ],
            ),
          ),
        ));
  }

  void _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
    setState(() => _response = response);
  }
}






