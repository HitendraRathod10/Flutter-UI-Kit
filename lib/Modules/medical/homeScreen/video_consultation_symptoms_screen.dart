import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/doctor_list_video_consultation_by_symptom.dart';

class VideoConsultationSymptomsScreen extends StatefulWidget {
  const VideoConsultationSymptomsScreen({Key? key}) : super(key: key);

  @override
  State<VideoConsultationSymptomsScreen> createState() =>
      _VideoConsultationSymptomsScreenState();
}

class _VideoConsultationSymptomsScreenState
    extends State<VideoConsultationSymptomsScreen> {
  var details = {
    'Anxiety': 'https://cdn-icons-png.flaticon.com/128/7145/7145123.png',
    'Fever': 'https://cdn-icons-png.flaticon.com/128/3781/3781981.png',
    'Cough': 'https://cdn-icons-png.flaticon.com/128/6701/6701570.png',
    'Cold': 'https://cdn-icons-png.flaticon.com/128/5641/5641619.png',
    'Chest pain': 'https://cdn-icons-png.flaticon.com/128/11060/11060182.png',
    'Headache': 'https://cdn-icons-png.flaticon.com/128/6553/6553550.png',
    'Depression': 'https://cdn-icons-png.flaticon.com/128/7714/7714651.png',
    'Hairfall': 'https://cdn-icons-png.flaticon.com/128/5506/5506742.png',
    'Diabetes': 'https://cdn-icons-png.flaticon.com/128/6161/6161510.png',
    'Injury': 'https://cdn-icons-png.flaticon.com/128/1576/1576481.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColor.white),
        backgroundColor: AppColor.primary_color,
        title: const Text(
          "Select your Symptom",
          style: TextStyle(color: AppColor.white),
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
                color: AppColor.primary_color.withOpacity(0.4),
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
                    mainAxisSpacing: 10),
                itemCount: details.length,
                padding: const EdgeInsets.fromLTRB(10, 00, 10, 20),
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
                          color: AppColor.primary_color.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
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
                                fontSize: 17, fontWeight: FontWeight.bold),
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
