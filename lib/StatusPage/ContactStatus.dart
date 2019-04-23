import 'package:flutter/cupertino.dart';

class ContactStatus extends StatelessWidget {
  const ContactStatus({
    this.name,
    this.update,
    this.pic,
  });

  final String name;
  final String update;
  final String pic;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      height: 90.0,
      padding: const EdgeInsets.only(top: 9.0),
      child: Row(
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
                      image: new AssetImage("images/$pic.png")),
                ),
              ),
             /*  ClipOval(
                child: Container(
                  color: CupertinoColors.activeBlue,
                  child: Icon(CupertinoIcons.add,
                      color: CupertinoColors.white, size: 25),
                ),
              ) */
            ],
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFBCBBC1), width: 0.0),
                ),
              ),
              padding:
                  const EdgeInsets.only(
                  top: 10, left: 15.0, bottom: 25.0, right: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.18,
                          ),
                        ),
                        Text(
                          update,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
