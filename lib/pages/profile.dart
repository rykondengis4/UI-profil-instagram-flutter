import 'package:flutter/material.dart';
import '../widget/tab_item.dart';
import '../widget/story_item.dart';
import '../widget/info_item.dart';
import '../widget/picture_profile.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
                "rykondengis", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            ),
            Icon(Icons.arrow_drop_down,
            color: Colors.black,)
          ],
        ),
        actions: [
          IconButton(onPressed: () {
            print("klik ikon tambah");
          },
            icon: Icon(Icons.add_box_outlined,),
            color: Colors.black,
          ),
          IconButton(onPressed: () {
            print("klik ikon menu");
          },
            icon: Icon(Icons.menu,),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                pictureProfile(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoItem("Posts", "10"),
                      infoItem("Followers", "6500"),
                      infoItem("Posts", "5100"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text("Rykondengis", style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
          ),
          SizedBox(height: 5,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
          child: RichText(text: TextSpan(text:
          "It is a long established fact that a reader will be distracted by the readable content ",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
            children: [
              TextSpan(text:
              "#hastag",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  )
              ),
            ]
          ),
          ),
          ),
          SizedBox(height: 5,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Link goes here", style: TextStyle(
            color: Colors.blue
          ),
          )
          ),
          SizedBox(height: 15,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
          child: OutlinedButton(onPressed: () {},
          child: Text(
              "Edit Profile", style: TextStyle(
            color: Colors.black,
          ),
          ),
          ),
          ),
          SizedBox(height: 15,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                storyItem("Story 1"),
                storyItem("Story 2"),
                storyItem("Story 3"),
                storyItem("Story 4"),
                storyItem("Story 5"),
                storyItem("Story 6"),
                storyItem("Story 7"),
              ],
            ),
          )
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tabItem(Icons.grid_on_outlined, true),
              tabItem(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => Image.network(
                "https://picsum.photos/id/${index + 10}/354",
                fit: BoxFit.cover,
              ),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
          label: "home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
          label: "search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined),
          label: "reels"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined),
          label: "shop"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
          label: "profile"
          ),
        ],
      ),
    );
  }
}