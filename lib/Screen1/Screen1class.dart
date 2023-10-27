// ignore: file_names
class Menu {
  String image;
  String profile;
  String name;
  String description;
  String date;

  Menu(
      {this.image = ' ',
      this.profile = ' ',
      this.name = ' ',
      this.description = ' ',
      this.date = ' '});
}

var grid = [
  Menu(
      image: 'maldives.png',
      profile: 'MaldivesProfile.png',
      name: 'Sang Dong-Min',
      description:
          "Feel the thrill on the only\nsurf simulator in Maldives 2022",
      date: 'Sep 9, 2022'),
  Menu(
      image: 'HongKong.png',
      profile: 'HongKongProfile.png',
      name: 'Pan Bong',
      description: "Hong Kong wins over Wall\nStreet CEOs after lifting strict",
      date: 'Sep 9, 2022'),
];

class short {
  String image;
  String Description;
  String NumberOfViews;

  short({this.image = ' ', this.Description = ' ', this.NumberOfViews = ' '});
}

var Short = [
  short(
      image: 'islands.png',
      Description: "Top Trending\nIslands in 2022",
      NumberOfViews: '40,999'),
  short(
      image: 'China.png',
      Description: "China\nTrading",
      NumberOfViews: '40,999')
];
