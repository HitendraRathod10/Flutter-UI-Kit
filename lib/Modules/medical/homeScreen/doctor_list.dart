import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/slotBooking.dart';

class Doctor_list extends StatefulWidget {
  const Doctor_list({super.key});

  @override
  State<Doctor_list> createState() => _Doctor_listState();
}

class _Doctor_listState extends State<Doctor_list> {
  List<dynamic> doctors = [
    {
      "name":"DR. SURYAKANT PANKAJ",
      "type":"Internal Medicine",
      "availability":false
    },
    {
      "name":"DR. NAVEEN AILAWADI",
      "type":"Pulmonary Medicine",
      "availability":true
    },
    {
      "name":"DR. VARUN REHANI",
      "type":"Neurology",
      "availability":false
    },
    {
      "name":"Dr Vaibhav Girotra",
      "type":"Pathology",
      "availability":true
    },
    {
      "name":"Dr. Aekta Rajpal",
      "type":"Anaesthesiology",
      "availability":false
    },
    {
      "name":"Dr. Manish Sharma",
      "type":"Opthalmology",
      "availability":true

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4ECF0),
      appBar: AppBar(
        title: Text("DOCTORS",style: TextStyle(color: Colors.white),),
        backgroundColor: AppColor.primary_color,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      body: ListView.builder(itemCount: doctors.length,itemBuilder: (context,index)=>Container(
      child: GestureDetector(
          onTap: (){
                if(!doctors[index]["availability"]){
                  AwesomeDialog(
                      context: context,
                      dialogType: DialogType.noHeader,
                      animType: AnimType.scale,
                      title: 'Book Your Slot tomorrow becaues ${doctors[index]["name"]} is not available',
            btnOkOnPress: () {},
            )..show();
                }else{
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SlotBooking()));
                }
          },
          child: Padding(
            padding:
            const EdgeInsets.fromLTRB(8.0, 10, 8.0, 00),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(50),
                    offset: Offset(0, 2),
                    blurRadius: 12
                  )
                ]
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                    doctors[index]["name"],
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
                trailing: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star,color: Colors.amber,),
                      Text("5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ],
                  )
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctors[index]["type"],maxLines: 1, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                    Text(
                      doctors[index]["availability"] ? "Available for Today" : "Try to Tomorrow",maxLines: 1, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: doctors[index]["availability"]?Colors.green:Colors.redAccent),),
                  ],
                ),
                style: Theme.of(context).listTileTheme.style,
              ),
            ),
          ),
        )
      )),
    );
  }
}
