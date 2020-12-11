import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<AdminLog> fetchAdminLog() async {
  final response = await http.get(
      'https://raw.githubusercontent.com/kafimuksid/test_api/main/adminlog.json');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return AdminLog.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class AdminLog {
  final String name;
  final String email;
  final String password;

  AdminLog({this.name, this.email, this.password});

  factory AdminLog.fromJson(Map<String, dynamic> json) {
    return AdminLog(
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<AdminLog> futureAdminLog;

  @override
  void initState() {
    super.initState();
    futureAdminLog = fetchAdminLog();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<AdminLog>(
            future: futureAdminLog,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.name);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
