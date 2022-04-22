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
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                ],
              )),
            ),
            const ListMenuDrawer(
              icon: Icons.home,
              title: 'Beranda',
              routeName: '/',
            ),
            const ListMenuDrawer(
              icon: Icons.bar_chart,
              title: 'Statistik',
              routeName: '',
            ),
            const ListMenuDrawer(
              icon: Icons.newspaper_outlined,
              title: 'Berita',
              routeName: '/berita',
            ),
            const ListMenuDrawer(
              icon: Icons.newspaper,
              title: 'BRS',
              routeName: '',
            ),
            const ListMenuDrawer(
              icon: Icons.book,
              title: 'Publikasi',
              routeName: '',
            ),
            const ListMenuDrawer(
              icon: Icons.image,
              title: 'Infografis',
              routeName: '',
            ),
            const ListMenuDrawer(
              icon: Icons.info,
              title: 'Tentang Kami',
              routeName: '',
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
  final String routeName;

  const ListMenuDrawer(
      {Key? key,
      required this.icon,
      required this.title,
      required this.routeName})
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
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
