import 'package:flutter/material.dart';

import './home.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: new Center(
              child: const Text(
            'Login', //AppBar
            style: TextStyle(color: Colors.black),
          )),
        ),
        body: ListView(
          children: [
            new Column(
              children: [
                new Center(
                    child: new Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: new Image.asset(
                    'assets/logo2.png', //JobExprss LOGO
                    //height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                )),
                new Container(
                    padding: EdgeInsets.fromLTRB(00, 10, 10, 10),
                    child:
                        new Text('All the Great Jobs in One Place!', //Motto 1
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ))),
                new Container(
                    padding: EdgeInsets.fromLTRB(00, 10, 10, 30),
                    child: new Text(
                        'Find Jobs, Employment & Career oppotunities')), //Brief Description
                Positioned.fill(
                  child: new Container(
                      height: MediaQuery.of(context).size.height * 0.60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.amber[300],
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(
                                40.0), //Top Rounded Container
                            topRight: const Radius.circular(40.0),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: new Text(
                              'Login To Continue',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 20.0, 30.0, 20.0),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                autofocus: false,
                                //initialValue: 'user@example.com',
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.black,
                                  /*focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 2.0),
                                  ),*/
                                  hintText: 'Email',
                                  prefixIcon: new Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Icon(Icons.email),
                                  ),
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                ),
                              )),
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(20.0, 30.0, 30.0, 20.0),
                            child: TextFormField(
                              autofocus: false,
                              //initialValue: 'some password',
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black,
                                hintText: 'Password',
                                prefixIcon: new Padding(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: Icon(Icons.vpn_key),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 10.0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              onPressed: () {
                                //Navigator.of(context).pushNamed(HomePage.tag);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              },
                              padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                              color: Colors.black,
                              child: Text('Log In',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Don't have an account? You must not be authorized then.",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ],
        ));
  }
}
