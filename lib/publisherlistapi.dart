import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import './publisher_api_info.dart';

class ApiManager {
  Future<PublisherModel> getPublisherList() async {
    var client = http.Client();
    var newsModel;
    var string =
        "https://raw.githubusercontent.com/kafimuksid/test_api/main/publisherdb.json";
    try {
      var response = await client.get(string);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        newsModel = PublisherModel.fromJson(jsonMap);
        print(newsModel);
      }
    } catch (Exception) {
      return newsModel;
    }
    return newsModel;
  }
}

/*Future<PublisherList> fetchPublisherList() async {
  final response = await http.get(
      'https://raw.githubusercontent.com/kafimuksid/test_api/main/publisherdb.json');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return PublisherList.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class PublisherList {
  final String name;
  final String email;
  final String publishedpost;
  final String hero;

  PublisherList({this.name, this.email, this.publishedpost, this.hero});

  factory PublisherList.fromJson(Map<String, dynamic> json) {
    return PublisherList(
        name: json['name'],
        email: json['email'],
        publishedpost: json['publishedpost'],
        hero: json['avatarUrl']);
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<PublisherList> futurePublisherList;

  @override
  void initState() {
    super.initState();
    futurePublisherList = fetchPublisherList();
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
          child: FutureBuilder<PublisherList>(
            future: futurePublisherList,
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
}*/
