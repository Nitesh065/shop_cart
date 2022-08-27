
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
    "image":
    "https://www.whatmobile.com.pk/admin/images/Samsung/SamsungGalaxyZFlip-s.jpg"
  },
  {
    "name": "QQWE",
    "image":
    "https://www.whatmobile.com.pk/admin/images/Samsung/SamsungGalaxyZFold2-s.jpg"
  },
  {
    "name": "WWSA",
    "image":
    "https://www.whatmobile.com.pk/admin/images/Samsung/SamsungGalaxyA71-s.jpg"
  },
  {
    "name": "EXMP",
    "image":
    "https://www.whatmobile.com.pk/admin/images/Samsung/SamsungGalaxyS20FE-s.jpg"
  },
  {
    "name": "SADS",
    "image":
    "https://www.whatmobile.com.pk/admin/images/Samsung/SamsungGalaxyNote20Ultra-s.jpg"
  },
  {
    "name": "SADS",
    "image":
    "https://www.whatmobile.com.pk/admin/images/Samsung/SamsungGalaxyS20FE-s.jpg"
  },
  {
    "name": "SBDS",
    "image":
    "https://www.whatmobile.com.pk/admin/images/Samsung/SamsungGalaxyA70-s.jpg"
  },
  {
    "name": "SEDS",
    "image":
    "https://www.whatmobile.com.pk/admin/images/Samsung/SamsungGalaxyZFold2-s.jpg"
  },
];