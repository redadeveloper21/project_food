// import 'dart:async';

// import 'package:company_one_plus/DB/db.dart';
// import 'package:company_one_plus/Widget/search.dart';
// import 'package:company_one_plus/models/models.dart';
// import 'package:flutter/material.dart';

// class FilterNetworkListPage extends StatefulWidget {
//   @override
//   FilterNetworkListPageState createState() => FilterNetworkListPageState();
// }

// class FilterNetworkListPageState extends State<FilterNetworkListPage> {
//   List<Vitamin> books = [];
//   String query = '';
//   Timer? debouncer;

//   @override
//   void initState() {
//     super.initState();

//     init();
//   }

//   @override
//   void dispose() {
//     debouncer?.cancel();
//     super.dispose();
//   }

//   void debounce(
//     VoidCallback callback, {
//     Duration duration = const Duration(milliseconds: 1000),
//   }) {
//     if (debouncer != null) {
//       debouncer!.cancel();
//     }

//     debouncer = Timer(duration, callback);
//   }

//   Future init() async {
//     final books = await vitamin_A;

//     setState(() => this.books = books);
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text('test'),
//           centerTitle: true,
//         ),
//         body: Column(
//           children: <Widget>[
//             buildSearch(),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: books.length,
//                 itemBuilder: (context, index) {
//                   final book = books[index];

//                   return buildBook(book);
//                 },
//               ),
//             ),
//           ],
//         ),
//       );

//   Widget buildSearch() => SearchWidget(
//         text: query,
//         hintText: 'Title or Author Name',
//         onChanged: searchBook,
//       );

//   Future searchBook(String query) async => debounce(() async {
//         final books = vitamin_A;

//         if (!mounted) return;

//         setState(() {
//           this.query = query;
//           this.books = books;
//         });
//       });

//   Widget buildBook(Vitamin book) => ListTile(
//         title: Text(book.food),
//         subtitle: Text(book.vitamin),
//       );
// }
