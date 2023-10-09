import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DoctorListVideoConsultationBySymptom extends StatefulWidget {
  const DoctorListVideoConsultationBySymptom({Key? key}) : super(key: key);

  @override
  State<DoctorListVideoConsultationBySymptom> createState() =>
      _DoctorListVideoConsultationBySymptomState();
}

class _DoctorListVideoConsultationBySymptomState
    extends State<DoctorListVideoConsultationBySymptom> {
  showDataAlert() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
            ),
            contentPadding: const EdgeInsets.only(
              top: 10,
            ),
            title: const Text(
              "Request for online consultation",
              style: TextStyle(fontSize: 24.0),
            ),
            content: SizedBox(
              height: 500,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Patient Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Patient Age',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Patient Contact Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Patient Address',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                        Fluttertoast.showToast(
                            msg:
                                "Your request has been submitted.Kindly wait for 24 hours.",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(colors: [
                              AppColor.primary_color,
                              AppColor.primary_color.withAlpha(80),
                            ]),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.primary_color.withAlpha(20),
                                  blurRadius: 10,
                                  offset: const Offset(3, 10))
                            ]),
                        child: const Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Note :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Doctor will be co-ordinate with you in 24 hours via video call.',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColor.white),
        backgroundColor: AppColor.primary_color,
        title: const Text(
          "Choose doctor",
          style: TextStyle(color: AppColor.white),
        ),
      ),
      body: ListView.builder(
          itemCount: 14,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 130,
              decoration: BoxDecoration(
                  color: AppColor.primary_color.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.white,
                        radius: 30,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/4751/4751166.png",
                          scale: 2.5,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Dr. John Deo',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Exp. - ',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '8 years',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/2309/2309912.png",
                            scale: 5.5,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "SVP Hospital",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/4147/4147093.png",
                            scale: 5.5,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "10 Minutes",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.currency_rupee),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "500",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/2889/2889312.png",
                            scale: 5.5,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "English, Hindi",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      showDataAlert();
                    },
                    child: Image.network(
                      "https://cdn-icons-png.flaticon.com/128/4343/4343381.png",
                      scale: 1.7,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}