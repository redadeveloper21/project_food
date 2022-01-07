import 'package:flutter/material.dart';

import 'food_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

String dropdownValue = 'A';

class _HomePageState extends State<HomePage> {
  TextStyle _style = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Home',
          style: _style,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/pho.jpeg'),
                        fit: BoxFit.cover))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Vitamin A', style: _style),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Vitamin B1', style: _style),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Vitamin B2', style: _style),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Vitamin B3', style: _style),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Vitamin B5', style: _style),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Vitamin B6', style: _style),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Vitamin c', style: _style),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Vitamin H', style: _style),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Vitamin K', style: _style),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Center(
              child: DropdownButton<String>(
                value: dropdownValue,
                iconSize: 60,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['A', 'B', 'C', 'D', 'E']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 40),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 180,
          ),
          RaisedButton(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Confirm',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FoodScreen()));
              })
        ],
      ),
    );
  }
}
