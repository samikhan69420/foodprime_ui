import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchWidget extends StatelessWidget {
  final TextEditingController? searchController;
  void Function(String)? onChanged;
  SearchWidget({
    super.key,
    this.onChanged,
    this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchBar(
            controller: searchController,
            onChanged: onChanged,
            backgroundColor: WidgetStatePropertyAll(Colors.grey[100]),
            hintText: "Search",
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.red,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(90, 0, 0, 0),
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
            ],
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            enableFeedback: true,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.mic),
          ),
        ),
      ],
    );
  }
}
