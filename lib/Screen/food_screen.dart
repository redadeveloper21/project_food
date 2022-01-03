import 'package:flutter/material.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  TextStyle _style = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEDEF),
      appBar: AppBar(
        title: Text(
          'Vitamins',
          style: _style,
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 19),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Seacrh',
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: MediaQuery.of(context).size.height * 0.09,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'apple',
                                    style: _style,
                                  ),
                                  Text(
                                    'Vitamin C',
                                    style: _style,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
