import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';

class DoctorListVideoConsultationBySymptom extends StatefulWidget {
  const DoctorListVideoConsultationBySymptom({Key? key}) : super(key: key);

  @override
  State<DoctorListVideoConsultationBySymptom> createState() =>
      _DoctorListVideoConsultationBySymptomState();
}

class _DoctorListVideoConsultationBySymptomState
    extends State<DoctorListVideoConsultationBySymptom> {
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
    );
  }
}
