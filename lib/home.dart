import 'package:flutter/material.dart';

import './publisher_api_info.dart';
import './publisherlistapi.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _publisher;

  @override
  void initState() {
    _publisher = ApiManager().getPublisherList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: Colors.amber,
        title: new Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Home', //AppBar
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: getCard(),
    );
  }

  Widget getBody() {
    return Center(child: CircularProgressIndicator());
  }

  Widget getCard() {
    return Container(
      child: FutureBuilder<PublisherModel>(
        future: _publisher,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.publishers.length,
              itemBuilder: (context, index) {
                //var publisher = snapshot.data.publishers[index];
                return Card(
                    child: ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage:
                        NetworkImage(snapshot.data.publishers[index].avatarUrl),
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        snapshot.data.publishers[index].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        snapshot.data.publishers[index].publishedpost,
                        style:
                            new TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ],
                  ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      snapshot.data.publishers[index].email,
                      style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ),
                ));
              },
            );
          } else
            return getBody();
          //CircularProgressIndicator()
        },
      ),
    );
  }
}

/*class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          backgroundColor: Colors.amber,
          title: new Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Home', //AppBar
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, i) => Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      dummyData[i].published_post,
                      style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    dummyData[i].email,
                    style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
              )
            ],
          ),
        ) /*ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_box),
              title: Row(
                children: [
                  Container(child: new Text('Publisher Name')),
                  Container(
                    child: Container(
                      child: Text('published today'),
                    ),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.email),
                  ),
                  Container(
                    child: Text('publisher@email.com'),
                  )
                ],
              ),
            )
          ],
        )*/
        );
  }
}*/
