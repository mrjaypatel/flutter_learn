import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final String jayProfPic =
      "https://media-exp1.licdn.com/dms/image/C4D03AQHk04TiF5O_Kw/profile-displayphoto-shrink_200_200/0/1657874197892?e=1664409600&v=beta&t=VgRTMdnr76scLjkqKwiZAr7yXR2DGAgOHEkZHlcCd0s";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              // decoration: BoxDecoration(color: Colors.yellow),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                accountName: Text(
                  "Jay Patel",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text("jay@humbingo.com",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(jayProfPic),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.amber,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.smiley,
                color: Colors.amber,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
