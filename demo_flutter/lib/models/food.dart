class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingrediens;
  String about;
  bool hightLight;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingrediens, this.about,
      {this.hightLight = false});

  static List<Food> generateRecomandeFood() {
    return [
      Food(
          'assets/images/dish1.JPEG',
          'NO1. in sales',
          'Soba Soup',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {'Noodle': 'assets/images/noodles.JPEG'},
            {'Shrimp': 'assets/images/shrimp.JPEG'}
          ],
          'Simply put, ramen is a japenes noodle soup',
          hightLight: true),
      Food(
          'assets/images/dish1.JPEG',
          'NO1. in sales',
          'Soba Soup',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {'Noodle': 'assets/images/noodles.JPEG'},
            {'Shrimp': 'assets/images/shrimp.JPEG'}
          ],
          'Simply put, ramen is a japenes noodle soup',
          hightLight: true)
    ];
  }
}
