import 'package:company_one_plus/DB/db.dart';
import 'package:company_one_plus/Widget/search.dart';
import 'package:company_one_plus/models/models.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatefulWidget {
  late String vitamin;

  FoodScreen(this.vitamin);
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  TextStyle _style = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

  List<Vitamin> vitamin_ = [];
  String query = '';
  @override
  void initState() {
    super.initState();
    vitamin_ = vitsw();
  }

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
            Image.asset(
              'assets/images/vits.jpg.webp',
              height: MediaQuery.of(context).size.height * 0.3,
              width: 300,
              fit: BoxFit.cover,
            ),
            // Container(
            // /: 42,
            // ,
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                  itemCount: vitamin_.length,
                  itemBuilder: (context, index) {
                    final vit = vitamin_[index];
                    return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: buildBook(vit));
                  }),
            )
          ],
        ),
      ),
    );
  }

  // Widget buildSearch() => SearchWidget(
  //       text: query,
  //       hintText: 'Food Name',
  //       onChanged: searchBook,
  //     );

  Widget buildBook(Vitamin vitamin) => Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
        height: MediaQuery.of(context).size.height * 0.09,
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      vitamin.food,
                      style: _style,
                    ),
                    Text(
                      vitamin.vitamin,
                      style: _style,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  // void searchBook(String query) {
  //   final books = vitamin_.where((book) {
  //     final titleLower = book.food.toLowerCase();
  //     final authorLower = book.vitamin.toLowerCase();
  //     final searchLower = query.toLowerCase();

  //     return titleLower.contains(searchLower) ||
  //         authorLower.contains(searchLower);
  //   }).toList();

  //   setState(() {
  //     this.query = query;
  //     // ignore: unnecessary_this
  //     this.vitamin_ = books;
  //   });
  // }

  List<Vitamin> vitsw() {
    switch (widget.vitamin) {
      case 'A':
        return vitamin_A;
        break;
      case 'C':
        return vitamin_C;
        break;
      default:
        return [];
        break;
    }
  }
}
