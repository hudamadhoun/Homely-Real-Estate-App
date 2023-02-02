class Producthome {
  final int id;

  final String title, description, image,price,address;
  final List<String> images;

  Producthome({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.images,
    required this.address,
  });
}

List<Producthome> productshome = [
  Producthome(
    id: 1,
    price: "500000",
    title: "منزل للبيع",
    address: "غزة-النصيرات–شاطى البحر–بجوارالنادي البحري",
    image: "assets/images/m1.jpg",

    images: [
      "assets/images/m1.jpg",
      "assets/images/mm1.jpg",
      "assets/images/mmm1.jpg",
    ],
    description:
    "فلة مصممة على افخم الديكورات وتحت اشراف نخبة من مهندسين الديكور، مساحة الفلة 400متر مربع وتتكون من 3صالون،4غرفة نوم،3حمام،2مطبخ و3 بلكونة ويوجد بها جنينة مزروعة شجر مساحتها 100مترمربع  ويوجد بها مسبح مساحته 30متر مربع.",
  ),
  Producthome(

    id: 2,
    price: "30000",
    title: "منزل للبيع",
    address: "غزة-الشاطئ",
    image: "assets/images/h1.jpeg",
    images: ["assets/images/h1.jpeg",],

    description:
    "بيت للبيع مكون من اربع شقق وطابق ارضي  وحواصل وسدة سكنية مساحة 220متر.",
  ),
  Producthome(

    id: 3,
    price: "25000",
    title: "منزل للبيع",
    address: "غزة-الشجاعية",
    image: "assets/images/hh2.jpeg",
    images: ["assets/images/hh2.jpeg",],

    description:
    "منزل للبيع مساحة 145مكون من 3طوابق سوبر لوكس.",
  ),
  Producthome(

    id: 4,
    price: "45000",
    title: "منزل للبيع",
    address: "غزة-جباليا",
    image: "assets/images/hu1.jpeg",
    images: [
      "assets/images/hu1.jpeg",
      "assets/images/hu2.jpeg",],

    description:
    "عمارة من طابقين وحاصل كبير مساحة 80متر.",
  ),
  Producthome(

    id: 5,
    price: "10000",
    title: "منزل للبيع",
    address: "غزة-غرب عيادة الصبرة الجديدة",
    image: "assets/images/homm.jpg",
    images: ["assets/images/homm.jpg",],

    description:
    "مساحة الارض 300متر مساحة البناء110متر تتكون من 3غرف وصالون ومطبخ امريكي وحمامين طابق واحد باطون مؤسسة للطابق السادس عمر البناء 3شهور مشطبة سوبر لوكس.",
  ),

  Producthome(

    id: 6,
    price: "3000",
    title: "منزل للبيع",
    address: "Al Senaa St",
    image: "assets/images/house.jpg",
    images: ["assets/images/house.jpg"],

    description:
    "مكون من ثلاث طوابق واربع شقق مجهزه بشكل كامل،مساحة الارض 556 متر.",
  ),
];
