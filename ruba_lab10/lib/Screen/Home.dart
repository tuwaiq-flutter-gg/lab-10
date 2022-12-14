import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ruba_lab10/Component/Button.dart';
import 'package:ruba_lab10/Component/textfiled.dart';
import 'package:ruba_lab10/controller/control.dart';

class Home extends StatelessWidget {
   Home({super.key});
bool check=false;
Control Controller = Get.put(Control());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          TextButton(onPressed: (){ 
             Get.locale == Locale("en", "US")?
              Get.updateLocale(Locale("ar", "SA"))
              :Get.updateLocale(Locale("en", "US"));
              }, child: Text("A9".tr)),
          SizedBox(height: 40,),
          Text("A1".tr,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          TextFileded(title: "A2".tr),
          SizedBox(height: 20,),
          TextFileded(title: "A3".tr),
            

            //  GetX<Control>(builder: (_) {
            //       return Material(
            //         child: CheckboxListTile(
            //           value: check,
            //           onChanged: (value) {
            //             {
            //               Controller.check.value = !check;
            //             }
            //           },
                 
               CheckboxListTile( 
                 value: check,
                                controlAffinity: ListTileControlAffinity.leading,
                                onChanged: (bool? value) {  
                                    // setState(() {
                                       check = value!;
                                    // });
                                },
                                    // controller.check.value = value;},
                                  
                                 title: Text.rich(
                                  TextSpan(text: "A5".tr,style: TextStyle(fontWeight: FontWeight.bold),children: <InlineSpan>[
                                    TextSpan(
                                       text:  "A6".tr,
                                        style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue,fontWeight: FontWeight.bold),
                                       ),
                                       TextSpan(
                                        text:  "A7".tr ),
                                       TextSpan(
                                        text:  "A8".tr,
                                        style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue,fontWeight: FontWeight.bold),
                                       ),
                                        ])
                                         
                                ),
                    ),
                       
                //   );
                // }),
            
                  SizedBox(height: 50,),           
                  Center(
               child:Button(title: "A1".tr),
            ),
            SizedBox(height: 15,),
              Center(
               child:Button(title: "A4".tr),
            ),
        ],
      ),
    
    
    );
  }
}