import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/home_page/search_widget.dart';
import 'package:food_delivery_app/list_data/food_prime_data.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController? searchController = TextEditingController();
  String query = '';

  @override
  void initState() {
    super.initState();
    searchController!.addListener(
      () {
        setState(() {
          query = searchController!.text;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredData = SEARCH_FOOD_PRIME_DATA.where(
      (element) => element['title']!.toLowerCase().contains(query.trim()),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset("assets/word_app_logo.png"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SearchWidget(
              searchController: searchController,
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                children: filteredData.map(
                  (e) {
                    return ListTile(
                      subtitle: Text("${e['price']}"),
                      leading: SizedBox(
                        child: Image.asset(
                          "assets/${e['image']}",
                        ),
                      ),
                      title: Text("${e['title']}"),
                    );
                  },
                ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
