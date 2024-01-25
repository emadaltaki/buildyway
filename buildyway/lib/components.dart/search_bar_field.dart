import 'package:flutter/material.dart';
import '../shared/constants/styles.dart';

class SearchBarField extends StatefulWidget {
  const SearchBarField({required this.search, super.key});
  final void Function(String userInput) search;

  @override
  State<SearchBarField> createState() => _SearchBarFieldState();
}

class _SearchBarFieldState extends State<SearchBarField> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(final BuildContext context) => SizedBox(
        width: 278,
        height: 32,
        child: TextFormField(
          controller: _searchController,
          onChanged: (final String value) {
            setState(() {
              final String userInput = value;
              widget.search(userInput);
            });
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            hintText: "Search for a subcontractor",
            hintStyle: openSansFont16ptGrey72,
            prefixIcon: const Icon(Icons.search_rounded),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );
}
