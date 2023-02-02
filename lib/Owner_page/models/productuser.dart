class Product {
  final int id;

  final String title, address, description, image,price;
  final List<String> images;



  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.address,
    required this.description,
    required this.image,
    required this.images,

  });
}

List<Product> products = [
  Product(
    id: 1,
    price: "390",
    title: "مكتب للإيجار مدة 5 سنوات",
    address: "غزة –الرمال -كابيتال مول",
    image: "assets/images/office1.jpg",
    images: [
      "assets/images/office1.jpg",
    ],
    description:
    "الطابق الخامس-اتجاه شمالي شرقي،تبلغ مساحة المكتب100 متر مربع يحتوي على 7مكاتب خشبية طولها 7 متر و 70كرسي ويتوفر بالمول مصعد كهربائي ومولد طاقة على مدار ال24 ساعة  .",
  ),

  Product(
    id: 2,
    price: "10000",
    title: "أرض ايجار لموسم العنب",
    address: "الشيخ رضوان–قرب مسجد النور",
    image: "assets/images/land.jpg",
    images: [
      "assets/images/land.jpg"
    ],
    description:
    "ارض زراعية تبلغ مساحتها 2 دونم مربع  مزروعة عنب خليلي اسود وعنب اخضر.",
  ),


  Product(
    id: 3,
    price: "50000",
    title: "منزل للبيع                             ",
    address: "النصيرات–بجوارالنادي البحري",
    image: "assets/images/m1.jpg",

    images: [
      "assets/images/m1.jpg",
      "assets/images/mm1.jpg",
      "assets/images/mmm1.jpg",
    ],
    description:
    "فلة مصممة على افخم الديكورات وتحت اشراف نخبة من مهندسين الديكور، مساحة الفلة 400متر مربع وتتكون من 3صالون،4غرفة نوم،3حمام،2مطبخ و3 بلكونة ويوجد بها جنينة مزروعة شجر مساحتها 100مترمربع  ويوجد بها مسبح مساحته 30متر مربع.",
  ),
];
