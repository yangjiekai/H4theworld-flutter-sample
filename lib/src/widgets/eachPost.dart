import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart'; // pub to load html tags from json api
import 'hawalnir-date-convertor.dart';
import 'package:hawalnir1/wordpress_client.dart';
import 'catWidgets.dart';

class HawalnirPost extends StatelessWidget {
  // i dont know what is the nag

  HawalnirPost({Key key, @required var this.post})
      : super(key: key); //we refer post as required
  final Post post; //the variable

  @override
  Widget build(BuildContext context) {
    int postID = post.id;
    return new Scaffold(
      appBar: new AppBar(title: hawalTitle(post) ,backgroundColor: Colors.deepPurple,
          ),
      body: new Padding(
          padding: EdgeInsets.all(16.0),
          child: new ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Hero(tag: 'hero$postID', child: hawalImage(post)),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        child: hawalBtnBar(),
                      ),
                    ],
                  ),
                  hawalTitle(post),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: hawalAuthor(post),
                      ),
                      Expanded(
                        child: hawalDate(post),
                      ),
                    ],
                  ),
                  Divider(),
                  contentRendered(post),
                ],
              ),
            ],
          )),
    );
  }

  Widget mainImage(Post post) {
    return FadeInImage.assetNetwork(
      placeholder: 'assets/images/placeholder.png',
      image: post.featuredMediaUrl == 0
          ? 'src/images/placeholder.png'
          : post.featuredMediaUrl,
    );
  }

  Widget titleRendered(Post post) {
    return Html(
        data: post.title,
        defaultTextStyle: TextStyle(
            //fontFamily: 'NotoKufiArabic',
            fontSize: 20.0,
            decoration: TextDecoration.none));
  }

  Widget contentRendered(Post post) {
    return Html(
        data: (post.content).toString(),
        defaultTextStyle: TextStyle(
            fontFamily: 'NotoKufiArabic',
            fontSize: 20.0,
            decoration: TextDecoration.none));
  }

  Widget authorEmbedded(Post post) {
    return Text(
      "نووسه‌ر: " + post.author,
      textAlign: TextAlign.right,
    );
  }

  Widget dateMain(Post post) {
    return Text(
      dateConvertor(post.date.toString()),
      textAlign: TextAlign.left,
    );
  }
}
