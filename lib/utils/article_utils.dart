class ArticleUtils {
  final String title;
  final String subtitle;
  final String? mediumLink;

  ArticleUtils({
    required this.title, 
    required this.subtitle, 
    this.mediumLink
    }
  );
  
}


List<ArticleUtils> articleUtil = [
  ArticleUtils(
    title: 'Flutter', 
    subtitle: 'Explore the boundless possibilities of Flutter through my curated list. Discover how this versatile framework empowers developers to create stunning, high-performance apps for any platform.',
    mediumLink: 'https://medium.com/@zacchaeusoluwole/list/flutter-2781cd0e18f1'
  ),
  ArticleUtils(
    title: 'Rust', 
    subtitle: 'Explore Rust\'s diverse applications in systems programming, web development, and mathematical computation. Uncover how Rust\'s features empower devs in crafting efficient solutions for mathematical modelling and computational tasks.',
    mediumLink: 'https://medium.com/@zacchaeusoluwole/list/rust-d6bca423c5a4'
  ),
  ArticleUtils(
    title: 'Rust:Embedded Systems and IoT', 
    subtitle: 'Explore a curated compilation of articles delving into Rust\'s applications in embedded systems and Internet of Things, providing valuable insights and practical guidance for enthusiasts and professionals alike.',
    mediumLink: 'https://medium.com/@zacchaeusoluwole/list/rust-embedded-systems-and-iot-72745ef47f02'
  )
];