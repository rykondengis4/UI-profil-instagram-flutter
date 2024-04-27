import 'package:flutter/material.dart';

class storyItem extends StatelessWidget {
  storyItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(40)
                ),
              ),
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://picsum.photos/536/354"
                        ),
                        fit: BoxFit.cover
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(40)
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Text(title)
        ],
      ),
    );
  }
}
