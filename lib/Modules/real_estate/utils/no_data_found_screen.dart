import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/theme_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'app_color.dart';

class NoDataFoundScreen extends StatelessWidget {
  const NoDataFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeController controller = Get.put(ThemeController());
    return Obx(
          () => Scaffold(
              backgroundColor: controller.isDarkMode.value ? AppColor.appBlueColor : Colors.white,
              body: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      controller.isDarkMode.value ?
                      SizedBox(
                        height: 200,
                        child: Image.asset('assets/images/icons8-no-data-availible-100_dark.png',fit: BoxFit.fill),
                      )
                      : SizedBox(
                        height: 200,
                        child: Image.asset('assets/images/icons8-no-data-availible_ligth-100 (1).png',fit: BoxFit.fill),
                      ),
                      const SizedBox(height: 10),
                      Text('No Data', style: Theme.of(context).textTheme.headline1),
                      const SizedBox(height: 25),
                      Text('No Data, Please try again later', style: Theme.of(context).textTheme.headline6)
                    ],
                  )
              )
          )
    );

  }
}
