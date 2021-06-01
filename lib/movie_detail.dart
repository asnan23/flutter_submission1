import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_streaming/model/movie_list.dart';

class DetailMovie extends StatefulWidget {
  final MovieList movie;
  DetailMovie(this.movie);
  @override
  _DetailMovieState createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  double storylineSize = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Stack(children: <Widget>[
                  Container(
                    height: 270,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.movie.image),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 271,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            end: Alignment(0, 0.06),
                            colors: [
                          Colors.white,
                          Colors.white.withOpacity(0)
                        ])),
                  )
                ]),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 24),
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black.withOpacity(0.04),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
              child: Text(
                widget.movie.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        widget.movie.category + ' - ' + widget.movie.language,
                        style: TextStyle(color: Colors.black87),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        widget.movie.rate,
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ]),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 24, bottom: 12),
                child: Text("Cast & Crew",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: widget.movie.crew.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(url),
                    ),
                  );
                }).toList(),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 24, bottom: 12),
                      child: Text("Storyline",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                            onPressed: () {
                              setState(() {
                                storylineSize--;
                              });
                            },
                            icon: Icon(Icons.remove)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                storylineSize++;
                              });
                            },
                            icon: Icon(Icons.add)),
                      ],
                    ),
                  )
                ]),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Text(widget.movie.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: storylineSize)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              // ignore: deprecated_member_use
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Color(0xFF503E9D),
                  child: Text("Play Movie",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  onPressed: () {}),
            )
          ],
        )),
      ),
    );
  }
}
