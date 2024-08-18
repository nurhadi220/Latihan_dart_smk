import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Home(),
      )
      );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indeks=0;
  void _diklik(int indeks){
    setState(() {
      _indeks=indeks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sidebar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Icon(Icons.image)),
            ListTile(
              title: Text('Title'),
              selected: _indeks==0,
              onTap: (){
                _diklik(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title1'),
              selected: _indeks==1,
              onTap: (){
                _diklik(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title2'),
              selected: _indeks==2,
              onTap: (){
                _diklik(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child:(widget[_indeks]),
      ),
    );
  }
}

class ar{
  String gambar,subtitle;
  ar({ required this.gambar,required this.subtitle});
}

List<ar> tes=[
  ar( gambar: 'img/merah.jpg', subtitle: 'Merah'),
  ar( gambar: 'img/kuning.jpg', subtitle: 'Kuning'),
  ar( gambar: 'img/biru.jpg', subtitle: 'Biru'),
];


List<Widget> widget=[
  GridView.count(
      crossAxisCount:3,
      children: sus.map((e) {
        return  Container(
          width: 100, height: 100,
          margin: EdgeInsets.all(5),
          child: Image.asset(e),
        );
      }).toList(),
  ),


  ListView(
      children: tes.map((e){
        return Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            color: Colors.green,
            child: ListTile(
              leading: Image.asset(e.gambar),
              subtitle: Text(e.subtitle),
            )
        );
      }).toList()
  ),
  Text("Arofan")
];


List<String> sus= [
  "img/merah.jpg",
  "img/kuning.jpg",
  "img/biru.jpg",

];