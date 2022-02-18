import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sample_cloud/view/add_item.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome back !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.sp),),
              Text('Login to your account',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15.sp),),
              SizedBox(height: 30.h,),
              TextFormField(
                decoration:  InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: const  TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                    prefixIcon: Icon(
                      CupertinoIcons.mail,
                      size: 30.sp,
                      color: Colors.grey,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey, width: 1.0.w)),
                    enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey, width: 1.0.w))),

              ),

              SizedBox(height: 20.h,),

              TextFormField(
                obscureText: true,
                decoration:  InputDecoration(
                  hintText: 'Password',
                  hintStyle: const  TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  suffixIcon:  Icon(Icons.visibility_outlined,size: 30.sp,
                    color: Colors.grey,),
                  prefixIcon:  Icon(
                    CupertinoIcons.lock,
                    size: 30.sp,
                    color: Colors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                ),
              ),

              SizedBox(height: 20.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot password',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w300),),
                ],
              ),

              SizedBox(height: 40.h,),


              GestureDetector(
                onTap: () => Get.to(AddItem()),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  height: 50.h,
                  width: 220.w,
                  child:   Center(child: Text('Login',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white))),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
