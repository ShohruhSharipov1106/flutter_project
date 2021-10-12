import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  String? img;
  InfoPage({required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: "1",
            child: imgContainerMethod(),
          ),
          appBarStackMethod(context),
          //positionButtonMethod(),
          infoStackMethod(context),
        ],
      ),
    );
  }

  Positioned positionButtonMethod() {
    return Positioned(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.white),
          fixedSize: Size(40, 40),
          minimumSize: Size(50, 50),
        ),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      top: 150.0,
      right: 100.0,
    );
  }

  Positioned infoStackMethod(BuildContext context) {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        height: 250.0,
        width: MediaQuery.of(context).size.width - 25,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://source.unsplash.com/random"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Laminated",
                        style: TextStyle(fontSize: 30.0),
                      ),
                      Text(
                        "Louis Vuitton",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Lorem ipsum dolor Lorem",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$6500",
                    style: TextStyle(fontSize: 27.0),
                  ),
                  InkWell(
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.brown,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 17.0,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottom: 35,
      left: 15,
      right: 15,
    );
  }

  // Sahifadagi asosiy rasm uchun
  Container imgContainerMethod() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(this.img!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // App Bar Uchun
  Positioned appBarStackMethod(BuildContext context) {
    return Positioned(
      top: 35.0,
      left: 10.0,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          SizedBox(width: 145),
          Text(
            "1/3",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
