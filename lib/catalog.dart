// ignore_for_file: camel_case_types

class item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;


  item({required this.id, required this.name, required this.desc, required this.price,required this.color,required this.image});

}



class  CatalogModel{
  static final products = [
    item(id: "coder001", name: 'Iphone 12', desc: 'Apple iphone 12th generation', price: 888, color: "#33505a", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
  ];
}
