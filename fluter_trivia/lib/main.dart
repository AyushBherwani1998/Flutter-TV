import 'package:flutter/material.dart';
import './movieUserInterface.dart';

void main() => runApp(new MaterialApp(
      title: "Flutter TV",
      home: UserInterface(),
    ));

class UserInterface extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyUserInterface();
  }
}

class MyUserInterface extends State<UserInterface> {
  int index = 0;
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text(
    "Flutter Tv",
    textDirection: TextDirection.ltr,
    style: new TextStyle(
        fontStyle: FontStyle.normal, color: Colors.white, fontFamily: "Oswald"),
  );

  //FunctionForSearch
  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          style: TextStyle(color: Colors.white),
          decoration: new InputDecoration(
              focusedBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.grey)),
              hintStyle: new TextStyle(
                color: Colors.white,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Search"),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text(
          "Flutter Tv",
          textDirection: TextDirection.ltr,
          style: new TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontFamily: "Oswald"),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey.shade800,
        elevation: 0.0,
        title: _appBarTitle,

        //IconTheme
        iconTheme: new IconThemeData(color: Colors.white),

        //AppBarIcons
        actions: <Widget>[
          IconButton(
            icon: _searchIcon,
            onPressed: _searchPressed,
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print("Settings Button Pressed");
            },
          )
        ],
      ),

      //FloatingActionButton
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.favorite,
            color: Colors.red.shade800,
            size: 30.0,
          ),
          backgroundColor: Colors.white,
          onPressed: () {
            print("Floating Button Pressed");
          }),

      //FloatingActonButtonLocation
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      //BottomNavigationBar
      bottomNavigationBar: new InkWell(
          child: new Theme(
              data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.grey.shade800,
              ),
              child: new BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: index == 0
                          ? Icon(
                              Icons.movie,
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.movie,
                              color: Colors.grey,
                            ),
                      title: Text(
                        "Movie",
                        style: TextStyle(fontFamily: "Oswald"),
                      )),
                  BottomNavigationBarItem(
                      icon: index == 1
                          ? Icon(Icons.live_tv, color: Colors.white)
                          : Icon(Icons.live_tv, color: Colors.grey),
                      title: Text(
                        "Live TV",
                        style: TextStyle(fontFamily: "Oswald"),
                      )),
                  BottomNavigationBarItem(
                      icon: index == 2
                          ? Icon(Icons.cloud_download, color: Colors.white)
                          : Icon(Icons.cloud_download, color: Colors.grey),
                      title: Text(
                        "Downloads",
                        style: TextStyle(fontFamily: "Oswald"),
                      )),
                  BottomNavigationBarItem(
                      icon: index == 3
                          ? Icon(Icons.account_circle, color: Colors.white)
                          : Icon(Icons.account_circle, color: Colors.grey),
                      title: Text(
                        "Account",
                        style: TextStyle(fontFamily: "Oswald"),
                      ))
                ],
                currentIndex: index,
                onTap: (int i) {
                  setState(() {
                    index = i;
                  });
                },
              ))),
      //Drawer
      drawer: new Drawer(),
      body: new MovieUserInterface(),
    );
  }
}
