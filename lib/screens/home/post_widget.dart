import 'package:artsells/screens/product/prodDescScreen.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                  ),
                ),
                title: Text('Codetodo'),
                subtitle: Text('yelahanka,Bangalore'),
                trailing: Icon(Icons.more_vert),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProdDescScreen())),
                child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/713jNeMYLFL.SL1280.jpg')))),
              ),
              ListTile(
                  leading: Wrap(
                    spacing: 10,
                    children: [
                      Icon(Icons.favorite, color: Colors.red, size: 32),
                      Icon(Icons.comment_rounded, color: Colors.grey, size: 32),
                      Icon(Icons.share, color: Colors.grey, size: 32),
                    ],
                  ),
                  trailing: Icon(
                    Icons.bookmark_border_outlined,
                    size: 35,
                    color: Colors.black,
                  )),
              Row(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('1000 likes',
                        style: TextStyle(fontWeight: FontWeight.w700))),
              ]),
              Row(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('hey guys subscribe to my channel',
                        style: TextStyle(fontWeight: FontWeight.w700))),
              ]),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text('view all 15 comments', style: TextStyle()),
                ),
              ]),
              ListTile(
                leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                  ),
                ),
                title: Text('Add a comment...'),
                subtitle: Text('yelahanka,Bangalore'),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 20),
                    Icon(Icons.add_circle_outline_rounded,
                        color: Colors.grey, size: 20),
                    Icon(Icons.more_vert),
                  ],
                ),
              )
            ],
          );
        });
  }
}
