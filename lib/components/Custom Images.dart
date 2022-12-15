import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:lab9/components/texts.dart';

class CustomeImages extends StatefulWidget {
  const CustomeImages(
      {super.key,
      required this.backGroundImage,
      required this.textItemName,
      required this.imageItem,
      required this.price});
  
  final Color backGroundImage;
  final String textItemName, imageItem;
  final price;

  @override
  State<CustomeImages> createState() => _CustomeImagesState();
}

class _CustomeImagesState extends State<CustomeImages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
       height: 200,
      width: 160,
     
      decoration: BoxDecoration( color: widget.backGroundImage, borderRadius: BorderRadius.circular(12)),
      child: Column(
       // fit: StackFit.loose,
        children: [
          Image.asset(
            widget.imageItem,
            fit: BoxFit.fitWidth,
          ),
           Text(
                widget.textItemName,
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,)),
              
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
            Text( widget.price,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              InkWell(child: Icon(Icons.add_shopping_cart_rounded,color: Colors.white,),
              onTap: () {
              //  Get.to(()=> productDetails());
               // Get.to(productDetails())
                
              },)
          ],
          ),
        ],
      ),
    );
  }
}


// class CustomeImagesDetails extends StatelessWidget {
//   const CustomeImagesDetails(
//       {super.key,
//       required this.backGroundImage,
//       required this.textItemName,
//       required this.imageItem,
//       required this.price});
  
//   final Color backGroundImage;
//   final String textItemName, imageItem;
//   final price;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(8),
//       padding: EdgeInsets.all(12),
//        height: Get.mediaQuery.size.height/1.5,// 400,
//       width:Get.mediaQuery.size.width/1.1,// 260,
     
//       decoration: BoxDecoration( color: backGroundImage, borderRadius: BorderRadius.circular(12)),
//       child: Column(
//        // fit: StackFit.loose,
//         children: [
//           Image.asset(
//             imageItem,
//             fit: BoxFit.fitWidth,
//           ),
//            Text(
//                 textItemName,
//                 style: TextStyle(
//                     color: Colors.yellow,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,)),
              
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
             
//             Text( price,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
//               InkWell(child: Icon(Icons.add_shopping_cart_rounded,color: Colors.white,),
//               onTap: () {
//                // Get.to(()=> productDetails());
                               
//               },)
//           ],
//           ),
//         ],
//       ),
//     );
//   }
// }
