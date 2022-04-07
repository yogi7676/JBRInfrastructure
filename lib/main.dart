import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jbr_infrastructure/app/controller/profilecontroller.dart';
import 'package:jbr_infrastructure/app/helpers/app_constants.dart';
import 'package:jbr_infrastructure/app/helpers/firebase.dart';
import 'package:jbr_infrastructure/app/utils/screens/dashboard/dashboard.dart';
import 'app/helpers/noglowbehaviour.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) {
    Get.put(ProfileController());
  });

  runApp(const JBRInfrastructure());
}

class JBRInfrastructure extends StatelessWidget {
  const JBRInfrastructure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: ((context, child) =>
          ScrollConfiguration(behavior: NoGlowBehaviour(), child: child!)),
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
      title: AppConstants.appName,
    );
  }
}
