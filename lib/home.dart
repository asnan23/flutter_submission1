import 'package:flutter/material.dart';
import 'package:movies_streaming/model/movie_list.dart';
import 'package:movies_streaming/movie_detail.dart';
import 'package:movies_streaming/profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF503E9D),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Profile();
                    }));
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('images/asnan.png'))),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Asnan Asrawi',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'IDR. 34.000',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFFBD460)),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(22, 30, 24, 12),
              child: Text('Now Playing',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final MovieList movies = movieList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailMovie(movies);
                    }));
                  },
                  child: Container(
                    height: 140,
                    width: 210,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(movies.image),
                            fit: BoxFit.cover)),
                    child: Container(
                      height: 140,
                      width: 210,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.61),
                                Colors.black.withOpacity(0)
                              ])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(movies.title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2),
                          Text(
                            movies.rate,
                            style: TextStyle(color: Colors.orangeAccent),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: movieList.length,
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(22, 30, 24, 12),
              child: Text('Browse Movie',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('images/icon.png'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('images/war.png'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('images/drama.png'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset('images/music.png'),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(22, 30, 24, 12),
              child: Text('Coming Soon',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final MovieList movies = movieComingList[index];
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 140,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(movies.image),
                            fit: BoxFit.cover)),
                    child: Container(
                      height: 140,
                      width: 210,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.61),
                                Colors.black.withOpacity(0)
                              ])),
                    ),
                  ),
                );
              },
              itemCount: movieComingList.length,
            ),
          ),
        ],
      ),
    );
  }
}
