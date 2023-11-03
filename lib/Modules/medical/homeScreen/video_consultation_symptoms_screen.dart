import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/doctor_list_video_consultation_by_symptom.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:get/get.dart';

class VideoConsultationSymptomsScreen extends StatefulWidget {
  const VideoConsultationSymptomsScreen({Key? key}) : super(key: key);

  @override
  State<VideoConsultationSymptomsScreen> createState() =>
      _VideoConsultationSymptomsScreenState();
}

class _VideoConsultationSymptomsScreenState
    extends State<VideoConsultationSymptomsScreen> {
  var details = {
    'anxiety'.tr: 'https://cdn-icons-png.flaticon.com/128/7145/7145123.png',
    'fever'.tr: 'https://cdn-icons-png.flaticon.com/128/3781/3781981.png',
    'cough'.tr: 'https://cdn-icons-png.flaticon.com/128/6701/6701570.png',
    'cold'.tr: 'https://cdn-icons-png.flaticon.com/128/5641/5641619.png',
    'chest pain'.tr: 'https://cdn-icons-png.flaticon.com/128/11060/11060182.png',
    'headache'.tr: 'https://cdn-icons-png.flaticon.com/128/6553/6553550.png',
    'depression'.tr: 'https://cdn-icons-png.flaticon.com/128/7714/7714651.png',
    'hairfall'.tr: 'https://cdn-icons-png.flaticon.com/128/5506/5506742.png',
    'diabetes'.tr: 'https://cdn-icons-png.flaticon.com/128/6161/6161510.png',
    'injury'.tr: 'https://cdn-icons-png.flaticon.com/128/1576/1576481.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appScreenBackground,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColor.white),
        backgroundColor: AppColor.primary_color,
        title: Text(
          "select your symptom".tr,
          style: TextStyle(color: AppColor.white, fontFamily: AppFont.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 2.5,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColor.offWhite,
                boxShadow: [
                  BoxShadow(
                      color: AppColor.primary_color.withAlpha(80),
                      blurRadius: 1,
                      offset: const Offset(2, 4),
                      spreadRadius: 2)
                ],
                border: Border.all(color: AppColor.white),
                borderRadius: BorderRadius.circular(25)),
            child: Image.network(
                "https://virtualsteth.com/assets/images/login-img.png"),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 4 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20),
                itemCount: details.length,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              const DoctorListVideoConsultationBySymptom()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColor.offWhite,
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.primary_color.withAlpha(80),
                                blurRadius: 3,
                                offset: const Offset(5, 10),
                                spreadRadius: 1)
                          ],
                          border: Border.all(color: AppColor.white),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            details.entries.toList()[index].value,
                            scale: 2,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            details.entries.toList()[index].key,
                            style: const TextStyle(
                                fontSize: 17, fontFamily: AppFont.medium),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
