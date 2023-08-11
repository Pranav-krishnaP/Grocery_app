class Categories {
  String? category;
  String? imageurl;

  Categories({this.category, this.imageurl}) {}
}

List<Categories> categories = [
  Categories(category: "Frash Fruits& Vegetable", imageurl: "Hello"),
  Categories(category: "Cooking Oil& Ghee", imageurl: "Hello"),
  Categories(category: "Meat & Fish", imageurl: "Hello"),
  Categories(category: "Bakery & Snacks", imageurl: "Hello"),
  Categories(category: "Dairy & Eggs", imageurl: "Hello"),
  Categories(category: "Beverages", imageurl: "Hello"),
];

class Items {
  String? imgurl;
  String? name;
  String? category;
  String? desc;
  double? price;

  Items({this.category, this.name, this.desc, this.price, this.imgurl}) {}
}

List<Items> items = [
  Items(
      category: "Beverage",
      name: "Diet Coke",
      desc: "355ml, Price",
      price: 1.99,
      imgurl: "assets/Categories/beverage.png"),
  Items(
      category: "Beverage",
      name: "Diet Coke",
      desc: "355ml, Price",
      price: 1.99,
      imgurl: "assets/Categories/beverage.png"),
  Items(
      category: "Beverage",
      name: "Diet Coke",
      desc: "355ml, Price",
      price: 1.99,
      imgurl: "assets/Categories/beverage.png"),
  Items(
      category: "Beverage",
      name: "Diet Coke",
      desc: "355ml, Price",
      price: 1.99,
      imgurl: "assets/Categories/beverage.png"),
  Items(
      category: "Beverage",
      name: "Diet Coke",
      desc: "355ml, Price",
      price: 1.99,
      imgurl: "assets/Categories/beverage.png"),
];
