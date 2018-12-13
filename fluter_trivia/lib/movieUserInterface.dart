import 'package:flutter/material.dart';

class MovieUserInterface extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyMovieUserInterface();
  }
}

class MyMovieUserInterface extends State<MovieUserInterface> {
  Icon _starIcon = new Icon(
    Icons.star_border,
    color: Colors.white,
    size: 20.0,
  );

  Icon _starIconR = new Icon(
    Icons.star_border,
    color: Colors.white,
    size: 20.0,
  );

  void _starIconPressed() {
    setState(() {
      if (this._starIcon.icon == Icons.star_border) {
        this._starIcon = new Icon(
          Icons.star,
          color: Colors.yellow.shade500,
          size: 20.0,
        );
      } else {
        this._starIcon = new Icon(
          Icons.star_border,
          color: Colors.white,
          size: 20.0,
        );
      }
    });
  }

  void _starIconPressedR() {
    setState(() {
      if (this._starIconR.icon == Icons.star_border) {
        this._starIconR = new Icon(
          Icons.star,
          color: Colors.yellow.shade500,
          size: 20.0,
        );
      } else {
        this._starIconR = new Icon(
          Icons.star_border,
          color: Colors.white,
          size: 20.0,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.grey.shade800,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          new Container(
            height: 20.0,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 16.0, left: 8.0),
            child: new Text(
              "New Release",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white, fontSize: 14.0, fontFamily: 'Oswald'),
            ),
          ),
          new Container(
            height: 120.0,
            margin: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: new ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/limitless_poster.jpg",
                      width: 180.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 20.0,
                          width: 180.0,
                          margin: EdgeInsets.only(top: 100.0),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        GestureDetector(
                          onTap: _starIconPressed,
                          child: Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.only(left: 156.0, top: 98.0),
                            child: _starIcon,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                new Padding(padding: EdgeInsets.only(left: 8.0)),
                new Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/dunkirk_movie_poster.jpg",
                      width: 180.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 20.0,
                          width: 180.0,
                          margin: EdgeInsets.only(top: 100.0),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.only(left: 156.0, top: 99.0),
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                new Padding(padding: EdgeInsets.only(left: 8.0)),
                new Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/Venom_poster.png",
                      width: 180.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 20.0,
                          width: 180.0,
                          margin: EdgeInsets.only(top: 100.0),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.only(left: 156.0, top: 99.0),
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey,indent: 8.0,),
          new Container(
            height: 20.0,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 8.0),
            child: new Text(
              "Recommended",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white, fontSize: 14.0, fontFamily: 'Oswald'),
            ),
          ),
          new Container(
            height: 120.0,
            margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: new ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/simmba_poster.jpg",
                      width: 180.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 20.0,
                          width: 180.0,
                          margin: EdgeInsets.only(top: 100.0),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        GestureDetector(
                          onTap: _starIconPressedR,
                          child: Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.only(left: 156.0, top: 98.0),
                            child: _starIconR,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                new Padding(padding: EdgeInsets.only(left: 8.0)),
                new Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/gold_poster.jpg",
                      width: 180.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 20.0,
                          width: 180.0,
                          margin: EdgeInsets.only(top: 100.0),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.only(left: 156.0, top: 99.0),
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                new Padding(padding: EdgeInsets.only(left: 8.0)),
                new Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/Padman_poster.jpg",
                      width: 180.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 20.0,
                          width: 180.0,
                          margin: EdgeInsets.only(top: 100.0),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.all(1.0),
                            margin: EdgeInsets.only(left: 156.0, top: 99.0),
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          Divider(color: Colors.grey,indent: 8.0,),
          Container()
        ],
      ),
    );
  }
}
