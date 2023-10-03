import 'package:flutter/material.dart';

class Doctor_list extends StatefulWidget {
  const Doctor_list({super.key});

  @override
  State<Doctor_list> createState() => _Doctor_listState();
}

class _Doctor_listState extends State<Doctor_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 1,itemBuilder: (context,index)=>Container(
        child: Padding(
          padding:
          const EdgeInsets.fromLTRB(8.0, 0, 8.0, 00),
          child: InkWell(
            onTap: () {
            },
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                  "Doctor Name",
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall?.copyWith(fontWeight: FontWeight.bold)),
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.network("https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg",fit: BoxFit.fill,)),
              ),
              subtitle: Text(
                "Dental",maxLines: 1, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
              trailing: Container(
                child: Row(
                  children: [
                  ],
                ),
              ),
              // tileColor: index % 2 == 0 ? Colors.grey.shade200 : AppColor.white,
              style: Theme.of(context).listTileTheme.style,
            ),
          ),
        )
      )),
    );
  }
}
