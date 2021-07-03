class Item {
  final int id;
  final String name;
  final String desc;
  final num price;

  Item({this.id, this.name, this.desc, this.price});
}

final products = [
  Item(
    id: 1,
    name: "Iphone 12",
    desc: "This is a Iphone",
    price: 999
  )
];