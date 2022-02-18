import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sample_cloud/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        builder: (context, widget){
          ScreenUtil.setContext(context);
          return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: widget!,);
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Login(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}


