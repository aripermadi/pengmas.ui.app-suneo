part of 'models.dart';

class Category {
  final int id;
  // final int numOfCourses;
  final String image;

  Category(this.id, this.image);

  //List<Category> get id => null;
  // this.name, this.numOfCourses,
}

List<Category> categories =
    categoriesData.map((item) => Category(item['id'], item['image'])).toList();
// item['name'], item['courses'],

var categoriesData = [
  {
    'id': 1,
    // "name": "Mindfullness",
    // 'courses': 17,
    'image': "assets/images/newpack/6 SCENE.png"
  },
  {
    'id': 2,
    // "name": "Kebahagiaan",
    // 'courses': 25,
    'image': "assets/images/newpack/2 SCENE.png"
  },
  {
    'id': 3,
    // "name": "Komunikasi",
    // 'courses': 13,
    'image': "assets/images/newpack/4 SCENE.png"
  },
  // {"name": "Kepribadian", 'courses': 17, 'image': "assets/images/business.png"},
];
