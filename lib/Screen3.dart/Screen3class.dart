class pic {
  String image;

  pic({this.image = ' '});
}

var Pic = [
  pic(image: 'assets/Image1Screen3.png'),
  pic(image: 'assets/Image2Screen3.png')
];

class temple {
  String image;
  String NewsType;
  String Description;
  String Date;
  String Time;

  temple(
      {this.image = ' ',
      this.NewsType = ' ',
      this.Description = ' ',
      this.Date = ' ',
      this.Time = ' '});
}

var Temple = [
  temple(
      image: 'assets/Temple1.png',
      NewsType: 'News: Politics',
      Description: 'Iran\'s raging protests Fifth Iranian paramilitary me...',
      Date: '16th May',
      Time: '09:32 pm'),
  temple(
      image: 'assets/Temple2.png',
      NewsType: 'News: Science',
      Description: 'Putin to host ceremony annexing occupied Ukrainia...',
      Date: '11th May',
      Time: '10:15 am'),
];
