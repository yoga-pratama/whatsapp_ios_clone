import 'package:flutter/cupertino.dart';

class UserStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      height: 90.0,
      padding: const EdgeInsets.only(top: 9.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Stack(
            alignment: Alignment(1.4, 0.8),
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage("Assets/pic1.png")),
                ),
              ),
              ClipOval(
                child: Container(
                  color: CupertinoColors.activeBlue,
                  child: Icon(CupertinoIcons.add,
                      color: CupertinoColors.white, size: 25),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFBCBBC1), width: 0.0),
                ),
              ),
              padding: const EdgeInsets.only(
                  top: 10, left: 15.0, bottom: 25.0, right: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "My Status",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.18,
                          ),
                        ),
                        Text(
                          "Add to my status",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 15.0,
                            letterSpacing: -0.24,
                            color: CupertinoColors.inactiveGray,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                     margin: EdgeInsets.only(left: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ClipOval(
                          child: Container(
                            width: 40,
                            height: 40,
                            color: CupertinoColors.extraLightBackgroundGray,
                            child: Icon(CupertinoIcons.photo_camera_solid,
                                color: CupertinoColors.activeBlue, size: 25),
                          ),
                        ),
                        ClipOval(
                          child: Container(
                            width: 40,
                            height: 40,
                            color: CupertinoColors.extraLightBackgroundGray,
                            child: Icon(CupertinoIcons.pen,
                                color: CupertinoColors.activeBlue, size: 25),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
