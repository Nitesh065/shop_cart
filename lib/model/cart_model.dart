
class Products {
  Products({
    required this.name,
    required this.image,
  });

  String name;
  String image;

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
  };
}

final product = [
  {
    "name": "ABCD",
    "image" : 'images/products/blazer1.jpeg',
  },
  {
    "name": "QQWE",
    "image":
    'images/products/blazer2.jpeg'
  },
  {
    "name": "WWSA",
    "image":
    'images/products/dress1.jpeg'
  },
  {
    "name": "EXMP",
    "image":
    'images/products/dress2.jpeg'
  },
  {
    "name": "SADS",
    "image":
    'images/products/hills1.jpeg'
  },
  {
    "name": "SADS",
    "image":
    'images/products/hills2.jpeg'
  },
  {
    "name": "SBDS",
    "image":
    'images/products/blazer1.jpeg'
  },
  {
    "name": "SEDS",
    "image":
    'images/products/blazer2.jpeg'
  },
];