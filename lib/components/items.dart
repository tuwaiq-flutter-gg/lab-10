class Item {
  final String imgPath;
  final double price;
  Item({
    required this.imgPath,
    required this.price,
  });
}

final List<Item> items = [
  Item(price: 165, imgPath: "images/iiphone.png"),
  Item(price: 200, imgPath: "images/iipad.png"),
  Item(price: 595, imgPath: "images/iph_wch.png"),
  Item(price: 925, imgPath: "images/macbook.png"),
  Item(price: 995, imgPath: "images/labtop.png"),
  Item(price: 995, imgPath: "images/airpods.png"),
  Item(price: 995, imgPath: "images/iphone13mini.png"),
  Item(price: 465, imgPath: "images/wwatch.png"),
  Item(price: 885, imgPath: "images/wwatch2.png"),
  Item(price: 665, imgPath: "images/wwatch3.png"),
  Item(price: 555, imgPath: "images/wwatch4.png"),
];
