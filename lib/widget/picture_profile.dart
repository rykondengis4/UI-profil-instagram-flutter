import 'package:flutter/material.dart';

class pictureProfile extends StatelessWidget {
  const pictureProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red,
                    Colors.orange,
                  ]
              ),
              borderRadius: BorderRadius.circular(48)
          ),
        ),
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              image: DecorationImage(
                  image: NetworkImage(
                    "https://picsum.photos/536/354",
                  ),
                  fit: BoxFit.cover
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(45)
          ),
        ),
      ],
    );
  }
}
