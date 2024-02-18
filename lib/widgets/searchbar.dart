import 'package:flutter/material.dart';
import '../app_styles.dart';
import 'package:provider/provider.dart';
import '../providers/search_provider.dart';

class SearchBarWidget extends StatefulWidget {
  final TextEditingController searchController;
  final VoidCallback onClear;

  SearchBarWidget({
    required this.searchController,
    required this.onClear,
  });

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Color(0xFFF2F3F2),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          SizedBox(width: 8.0),
          Icon(Icons.search_rounded, color: tBlack),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              controller: widget.searchController,
              decoration: InputDecoration(
                hintText: 'Search Pet or Breed',
                border: InputBorder.none,
                hintStyle: tPoppinsMedium.copyWith(color: tGrey3),
              ),
              onChanged: (query) {
                // Update search results on each change
                Provider.of<SearchProvider>(context, listen: false)
                    .updateSearchResults(query);
                setState(() {});
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              widget.searchController.clear();
              widget.onClear();
              // Clear search results when clearing the search field
              Provider.of<SearchProvider>(context, listen: false)
                  .updateSearchResults('');
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
