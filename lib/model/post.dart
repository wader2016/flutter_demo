class Post {
  Post(this.title, this.author, this.imageUrl); 
  final String title;
  final String author;
  final String imageUrl;
}


  final List<Post> lists = [
    Post('Node', 'author', 'https://img4.sycdn.imooc.com/szimg/5c7c82630820acf806000338.jpg'),
    Post('Spring', 'author', 'https://img1.sycdn.imooc.com/szimg/5cb68a1408ed350506000338.jpg'),
    Post('TypeScript', 'author', 'https://img1.sycdn.imooc.com/szimg/5cbf00c608f52a3b06000338.jpg'),
    Post('Java', 'author', 'https://img3.sycdn.imooc.com/szimg/58f57d200001461105400300.jpg')
  ];