import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({Key? key}) : super(key: key);

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:
        const Text("Search location", style: TextStyle(color: AppColor.black)),
        backgroundColor: AppColor.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, color: AppColor.black)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: TextFormField(
              style: const TextStyle(color: AppColor.black),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search by street/area/city",
                border:
                OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                prefixIcon: Icon(Icons.search,color: AppColor.black,),
                prefixIconColor: AppColor.black,
              ),
              cursorColor: AppColor.appBlueColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter required fields';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
