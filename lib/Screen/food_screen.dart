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

  late List<Vitamin> vitamin;
  String query = '';

  @override
  void initState() {
    super.initState();

    vitamin = vitsw();
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
            buildSearch(),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                  itemCount: vitamin.length,
                  itemBuilder: (context, index) {
                    final vit = vitamin[index];
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

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: '                  Food Name',
        onChanged: searchVitamin,
      );

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

  void searchVitamin(String query) {
    final vitamins = vitsw().where((vitamin) {
      final nameLower = vitamin.food.toLowerCase();
      final vitaminLower = vitamin.vitamin.toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower.contains(searchLower) ||
          vitaminLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.vitamin = vitamins;
    });
  }

  List<Vitamin> vitsw() {
    switch (widget.vitamin) {
      case 'A':
        return vitamin_A;
        break;
      case 'C':
        return vitamin_C;
        break;
      case 'B1':
        return vitamin_B1;
        break;
      case 'B2':
        return vitamin_B2;
        break;
      case 'B3':
        return vitamin_B3;
        break;
      case 'B4':
        return vitamin_B4;
        break;
      case 'B5':
        return vitamin_B5;
        break;
      case 'B6':
        return vitamin_B6;
        break;
      case 'B12':
        return vitamin_B12;
        break;
      case 'K':
        return vitamin_K;
        break;
      case 'G':
        return vitamin_G;
        break;
      case 'H':
        return vitamin_H;
        break;
      default:
        return [];
        break;
    }
  }
}
