import 'package:flutter/material.dart';

class Pertemuan10 extends StatelessWidget {
  const Pertemuan10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 10'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),
            child: const Text(
              'Menu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExPU()));
              },
              child: const Text('pop up'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExTB()));
              },
              child: const Text('Tab Bar'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExPuTb()));
              },
              child: const Text('Pop Up Tab Bar'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExD()));
              },
              child: const Text('Drawer'),
            ),
          ),
        ],
      ),
    );
  }
}

class ExPU extends StatelessWidget {
  const ExPU({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pop Up'),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => const [
                    PopupMenuItem(child: Text('Profil')),
                    PopupMenuItem(child: Text('Setting')),
                    PopupMenuItem(child: Text('About')),
                  ])
        ],
      ),
    );
  }
}

class ExTB extends StatefulWidget {
  const ExTB({super.key});

  @override
  State<ExTB> createState() => _ExTBState();
}

class _ExTBState extends State<ExTB> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Inbox',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text('Halaman Home'),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('Halaman Inbox'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExPuTb extends StatefulWidget {
  const ExPuTb({super.key});

  @override
  State<ExPuTb> createState() => _ExPuTbState();
}

class _ExPuTbState extends State<ExPuTb> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pop Up Tab Bar'),
          backgroundColor: Colors.blue,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.camera_enhance),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(
              itemBuilder: ((context) => const [
                    PopupMenuItem(child: Text('Profil')),
                    PopupMenuItem(child: Text('Setting')),
                    PopupMenuItem(child: Text('About')),
                  ]),
            ),
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.group),
            ),
            Tab(
              icon: Text('Pesan'),
            ),
            Tab(
              icon: Text('Berita'),
            ),
            Tab(
              icon: Text('Kontak'),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text('halaman group'),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('halaman Pesan'),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('halaman Berita'),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('halaman Kontak'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExD extends StatelessWidget {
  const ExD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Drawer'),
        actions: [
          IconButton(
            icon: Icon(Icons.person_2_rounded),
            onPressed: () {
              // Tampilkan drawer di sini
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: FlutterLogo(),
              accountName: Text('pem_bas_mob_1'),
              accountEmail: Text('pbm1@gmail.com'),
            ), // UserAccounts DrawerHeader

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Beranda'),
            ), // ListTile

            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
            ), // ListTile

            AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: Icon(Icons.local_play),
              applicationName: 'Flutter PBM1',
              applicationVersion: '01.12.12.23',
              applicationLegalese: '© 2023',
              child: Text('About App'),
            ), // AboutListTile 1.
          ],
        ), // ListView
      ),
    );
  }
}
