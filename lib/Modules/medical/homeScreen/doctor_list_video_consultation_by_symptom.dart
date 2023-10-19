import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
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
            backgroundColor: AppColor.offWhite,
            elevation: 20,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
            ),
            insetPadding: EdgeInsets.zero,
            title: Container(
              color: AppColor.offWhite,
              child: const Text(
                "Request for online consultation",
                style: TextStyle(fontSize: 24.0, fontFamily: AppFont.semiBold),
              ),
            ),
            titlePadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            content: Container(
              color: AppColor.offWhite,
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Patient Name',
                        labelStyle: TextStyle(fontFamily: AppFont.medium),
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
                        labelStyle: TextStyle(fontFamily: AppFont.medium),
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
                        labelStyle: TextStyle(fontFamily: AppFont.medium),
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
                        labelStyle: TextStyle(fontFamily: AppFont.medium),
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
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: AppColor.primary_color,
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
                                fontSize: 17,
                                fontFamily: AppFont.semiBold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Note :',
                      style: TextStyle(fontFamily: AppFont.semiBold),
                    ),
                    const Text(
                      'Doctor will be co-ordinate with you in 24 hours via video call.',
                      style: TextStyle(fontSize: 12, fontFamily: AppFont.regular),
                    ),
                  ],
                ),
              ),
            ),
            contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
          style: TextStyle(color: AppColor.white, fontFamily: AppFont.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: 14,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 7,
                shadowColor: AppColor.primary_color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 130,
                  decoration: const BoxDecoration(
                    color: AppColor.offWhite,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                AppColor.primary_color.withOpacity(0.4),
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
                                fontSize: 13, fontFamily: AppFont.medium),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Exp. - ',
                                style: TextStyle(
                                    fontSize: 13, fontFamily: AppFont.semiBold),
                              ),
                              Text(
                                '8 years',
                                style: TextStyle(
                                    fontSize: 13, fontFamily: AppFont.semiBold),
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
                                style: TextStyle(fontSize: 14, fontFamily: AppFont.regular),
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
                                style: TextStyle(fontSize: 14, fontFamily: AppFont.regular),
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
                                style: TextStyle(fontSize: 14, fontFamily: AppFont.regular),
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
                                style: TextStyle(fontSize: 14, fontFamily: AppFont.regular),
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
                ),
              ),
            );
          }),
    );
  }
}
