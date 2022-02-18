import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class AddItem extends StatelessWidget {
   AddItem({Key? key}) : super(key: key);

  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Add Item'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border:  Border.all(color: Colors.grey)
                ),
                width: MediaQuery.of(context).size.width.w,
                height: 80.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Image(image: NetworkImage('https://user-images.githubusercontent.com/6290720/91559755-9d6e8c00-e973-11ea-9bde-4b60c89f441a.png'),width: 30.w,height: 30.h,),
                    Text('Upload')
                  ],
                ),
              ),

              SizedBox(height: 20.h,),

              const Text('Item Name',style: TextStyle(fontWeight: FontWeight.bold),),

              SizedBox(height: 10.h,),

              TextFormField(
                decoration:  InputDecoration(
                  hintText: 'Enter Item Name',
                  hintStyle: const  TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                ),
              ),

              SizedBox(height: 20.h,),

              Text('Business Category',style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 10.h,),

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                    border:  Border.all(color: Colors.grey)
                ),
                width: MediaQuery.of(context).size.width.w,
                height: 50.h,
                child:const Padding(
                  padding:  EdgeInsets.all(18.0),
                  child: Text('Food & Beverage',style: TextStyle(fontWeight: FontWeight.bold)),
                ),

              ),

              SizedBox(height: 20.h,),

              Text('Brand Category',style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 10.h,),

              Container(
                decoration: BoxDecoration(
                    border:  Border.all(color: Colors.grey)
                ),
                width: MediaQuery.of(context).size.width.w,
                height: 50.h,
                child: DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(), onChanged: (String? value) {  },
                ),
              ),

              SizedBox(height: 20.h,),

              Text('Normal Price (RM)',style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 10.h,),

              TextFormField(
                decoration:  InputDecoration(
                  hintText: 'Enter Price(RM)',
                  hintStyle: const  TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                ),
              ),

              SizedBox(height: 20.h,),

              Text('Promo Method',style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 10.h,),

              Container(
                width: MediaQuery.of(context).size.width.w,
                height: 50.h,
                color: Colors.amber,
              ),

              SizedBox(height: 20.h,),

              Text('Discount Amount',style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 10.h,),

              TextFormField(
                decoration:  InputDecoration(
                  hintText: 'Enter Discount Amount',
                  hintStyle: const  TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                ),
              ),

              SizedBox(height: 20.h,),

              Text('Promotion Pricce(RM)',style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 10.h,),

              TextFormField(
                decoration:  InputDecoration(
                  hintText: 'Enter Promotion Price (RM)',
                  hintStyle: const  TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                ),
              ),

              SizedBox(height: 20.h,),

              Text('Stock',style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 10.h,),

              TextFormField(
                decoration:  InputDecoration(
                  hintText: 'Enter Stock',
                  hintStyle: const  TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                ),
              ),

              SizedBox(height: 20.h,),

              Text('Validity',style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 10.h,),

              Container(
                width: MediaQuery.of(context).size.width.w,
                height: 100.h,
                decoration: BoxDecoration(
                    border:  Border.all(color: Colors.grey)
                ),
              ),

              SizedBox(height: 20.h,),
              Text('Limited purchases',style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h,),
              TextFormField(
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                ),
              ),
              SizedBox(height: 20.h,),
              Text('Description',style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h,),
              TextFormField(
                decoration:  InputDecoration(
                  hintText: 'Write Description',
                  hintStyle: const  TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                ),
              ),
              SizedBox(height: 20.h,),
              Text('T&C',style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h,),
              TextFormField(
                decoration:  InputDecoration(
                  hintText: 'Enter T&C',
                  hintStyle: const  TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0.w)),
                ),
              ),
              SizedBox(height: 10.h,),
              GestureDetector(
                onTap: () => Get.to(AddItem()),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  height: 40.h,
                  child:   Center(child: Text('Confirm',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
