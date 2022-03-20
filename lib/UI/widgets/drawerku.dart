import 'package:flutter/material.dart';

class DrawerKu extends StatelessWidget {
  const DrawerKu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF043277),
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          children: [
            SizedBox(
              height: 90,
              child: DrawerHeader(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 47,
                      height: 47,
                      child: Image.asset('assets/images/bps-icon.png')),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                ],
              )),
            ),
            ListMenuDrawer(
              icon: Icons.home,
              title: 'Beranda',
            ),
            ListMenuDrawer(
              icon: Icons.bar_chart,
              title: 'Statistik',
            ),
            ListMenuDrawer(
              icon: Icons.newspaper,
              title: 'BRS',
            ),
            ListMenuDrawer(
              icon: Icons.image,
              title: 'Infografis',
            ),
            ListMenuDrawer(
              icon: Icons.book,
              title: 'Publikasi',
            ),
            ListMenuDrawer(
              icon: Icons.info,
              title: 'Tentang Kami',
            ),
          ],
        ),
      ),
    );
  }
}

class ListMenuDrawer extends StatelessWidget {
  final IconData icon;
  final String title;

  const ListMenuDrawer({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {},
    );
  }
}
