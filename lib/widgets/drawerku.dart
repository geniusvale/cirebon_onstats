import 'package:flutter/material.dart';

class DrawerKu extends StatelessWidget {
  const DrawerKu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF043277),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ListMenuDrawer(
              icon: Icons.home_outlined,
              title: 'Beranda',
              routeName: '/',
            ),
            const SizedBox(height: 8),
            ExpansionTile(
                title: const Text('Statistik'),
                textColor: Colors.white,
                collapsedTextColor: Colors.white,
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                children: [
                  ListTile(
                    onTap: () => Navigator.pushNamed(context, '/sosdukSubject'),
                    title: const Text(
                      'Sosial dan Kependudukan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () =>
                        Navigator.pushNamed(context, '/ekoperdagSubject'),
                    title: const Text(
                      'Ekonomi dan Perdagangan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () =>
                        Navigator.pushNamed(context, '/pertanpertamSubject'),
                    title: const Text(
                      'Pertanian dan Pertambangan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]),
            const SizedBox(height: 8),
            const ListMenuDrawer(
              icon: Icons.newspaper_outlined,
              title: 'Berita',
              routeName: '/berita',
            ),
            const SizedBox(height: 8),
            const ListMenuDrawer(
              icon: Icons.local_post_office_outlined,
              title: 'BRS',
              routeName: '/brs',
            ),
            const SizedBox(height: 8),
            const ListMenuDrawer(
              icon: Icons.book_outlined,
              title: 'Publikasi',
              routeName: '/publikasi',
            ),
            const SizedBox(height: 8),
            const ListMenuDrawer(
              icon: Icons.image_outlined,
              title: 'Infografis',
              routeName: '',
            ),
            const SizedBox(height: 8),
            const ListMenuDrawer(
              icon: Icons.local_library_outlined,
              title: 'Data Statistik Lokal',
              routeName: '/lokalStatsScreen',
            ),
            const SizedBox(height: 8),
            const ListMenuDrawer(
              icon: Icons.info_outlined,
              title: 'Tentang BPS',
              routeName: '/tentang',
            ),
            const SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Badan Pusat Statistik Kota Cirebon\n',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Jl. Sekar Kemuning I Evakuasi, Cirebon 45136 Jawa Barat - Indonesia',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'E-Mail: bps3274@bps.go.id',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Telp: +62 231 485524, Fax: +62 231 484403\n',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Hak Cipta © 2022 Badan Pusat Statistik\nSemua Hak Dilindungi\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
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
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(50),
      //   side: const BorderSide(color: Colors.white),
      // ),
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
