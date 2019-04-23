import 'package:flutter/cupertino.dart';
import 'ContactStatus.dart';
import 'UserStatus.dart';

var arrName = ["","Iron Man", "Black Widow", "Thor", "Bruce Banner"];
var arrStats = ["" ,"3", "4", "1", "2"];
var arrPic = ["pic2","pic2", "pic3", "pic4", "pic5"];


var viewName = ["","Ant Man","Captain Marvel"];
var viewStats = ["","5","7"];
var viewPic = ["","pic6","pic7"];

var statusPage = CupertinoTabView(builder: (BuildContext context) {
  return CupertinoPageScaffold(
    child: DecoratedBox(
      decoration: const BoxDecoration(color: Color(0xFFEFEFF4)),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text("Status"),
              previousPageTitle: 'Status',
              leading: CupertinoButton(
                child: Text("Privacy"),
                onPressed: () => {},
              ),
            ),
            SliverSafeArea(
              top: false,
              bottom: false,
              minimum: EdgeInsets.only(top: 30, bottom: 30),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return UserStatus();
                }, childCount: 1),
              ),
            ),
            SliverSafeArea(
              top: false,
              bottom: false,
              minimum: EdgeInsets.only(bottom: 30),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  if (index == 0) {
                    return Container(
                      child: Text(
                        "RECENT UPDATES",
                        style: const TextStyle(
                          fontSize: 15.0,
                          letterSpacing: -0.24,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      margin: EdgeInsets.only(left: 20),
                    );
                  } else {
                     String name = arrName.elementAt(index);
                     String status = arrStats.elementAt(index);
                     String pic = arrPic.elementAt(index);
                    return ContactStatus(
                      name: "$name",
                      update: "$status New",
                      pic:  "$pic",
                    );
                  }
                }, childCount: arrName.length),
              ),
            ),
            SliverSafeArea(
              top: false,
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  if (index == 0) {
                    return Container(
                      child: Text(
                        "VIEWED UPDATES",
                        style: const TextStyle(
                          fontSize: 15.0,
                          letterSpacing: -0.24,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      margin: EdgeInsets.only(left: 20),
                    );
                  } else {
                    String name = viewName.elementAt(index);
                     String status = viewStats.elementAt(index);
                     String pic = viewPic.elementAt(index);
                      return ContactStatus(
                        name: "$name",
                        update: "$status Updates",
                        pic: "$pic",
                      );
                  }
                }, childCount: viewName.length),
              ),
            )
          ],
        ),
      ),
    ),
  );
});
