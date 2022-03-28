import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/color/colors.dart';
import 'package:ui_demo_flutter/home_page_screen.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> fragrancesString = [
    "Body Perfume",
    "Body Spray",
    "Eau De parfum",
    "Eau De Toilette",
    "All fragrances"
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: _scaffoldKey,
      child: ListView(
        children: [
          _createHeader(),
          ListTile(
            visualDensity: VisualDensity(vertical: -4),
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePageScreen()),
              );
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text("TGIF"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ExpansionTile(
            title: Text("Grooming Range"),
            leading: Icon(Icons.widgets),
            children: [
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Beard"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                leading: Icon(Icons.deck),
                title: Text("Body"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                leading: Icon(Icons.weekend),
                title: Text("Face"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                leading: Icon(Icons.event_seat),
                title: Text("Hair"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                leading: Icon(Icons.chair),
                title: Text("Shave"),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ExpansionTile(
            title: Text("Lifestyle - Min Straps"),
            leading: Icon(Icons.nightlife),
            children: [
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.contacts),
                title: Text("Feel Better"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.deck),
                title: Text("Look Better"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.weekend),
                title: Text("Love Better"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.event_seat),
                title: Text("Sleep Better"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.chair),
                title: Text("Perform Better"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.chair),
                title: Text("How to use - Minstraps"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.chair),
                title: Text("FAQS"),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ExpansionTile(
            title: Text("Fragrances"),
            leading: Icon(Icons.border_clear),
            children: [
              for (int i = 0; i < fragrancesString.length; i++)
                ListTile(
                  tileColor: (i == 1) ? colorWhite : COLOR_GRAY,
                  leading: Icon(Icons.border_style),
                  title: Text(fragrancesString[i]),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              /*ListTile(
                leading: Icon(Icons.border_style),
                title: Text("Body Spray"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.border_style),
                title: Text("Eau De parfum"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.border_style),
                title: Text("Eau De Toilette"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 3,
                color: colorGray,
              ),
              ListTile(
                tileColor: COLOR_GRAY,
                leading: Icon(Icons.border_style),
                title: Text("All fragrances"),
                onTap: () {
                  Navigator.pop(context);
                },
              )*/
            ],
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ListTile(
            leading: Icon(Icons.filter_frames),
            title: Text("Essential Grooming Kits"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ListTile(
            leading: Icon(Icons.vignette),
            title: Text("Curate Your Own Box"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ListTile(
            leading: Icon(Icons.fiber_dvr),
            title: Text("Shop By Concern"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ListTile(
            leading: Icon(Icons.subscriptions),
            title: Text("Gifts For Men"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ListTile(
            leading: Icon(Icons.low_priority),
            title: Text("New Launches"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ListTile(
            leading: Icon(Icons.dvr),
            title: Text("Gift Card"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ListTile(
            leading: Icon(Icons.reorder),
            title: Text("The Man Club"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          ),
          ListTile(
            leading: Icon(Icons.military_tech),
            title: Text("Track Your Order"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3,
            color: colorGray,
          )
        ],
      ),
    );
  }

  Widget _createHeader() {
    return Container(
      height: 90,
      color: COLOR_PRIMARY,
      child: DrawerHeader(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.person_outline,
              size: 60,
              color: Colors.white,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center),
                SizedBox(height: 10),
                Text("Login/SignUp",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.cancel,
                color: colorWhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
