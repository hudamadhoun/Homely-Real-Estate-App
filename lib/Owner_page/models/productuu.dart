class Productt {
  final int id;

  final String title, address, description, image,price;
  final List<String> images;



  Productt({
    required this.id,
    required this.price,
    required this.title,
    required this.address,
    required this.description,
    required this.image,
    required this.images,

  });
}

List<Productt> productt = [
  Productt(
    id: 1,
    price: "52000",
    title: "منزل للبيع",
    address: "غزة-تل الهوى-بجوار مخبز اليازجي",
    //" -عمارةالأمل",
    image: "assets/images/ho1.jpg",
    images: [
      "assets/images/ho1.jpg",
      "assets/images/home1.jpg",
      "assets/images/home2.jpg",
      "assets/images/home4.jpg",
    ],
    description:
    "الطابق الرابع - اتجاه جنوبي غربي،تبلغ مساحة المنزل 130متر مربع وتتكون من 2صالون،2غرفة نوم،2حمام،مطبخ،بلكونة ويتوفر بالبناية مصعد كهربائي ومولد طاقة",
  ),

  Productt(
    id: 2,
    price: "7000",
    title: "أرض للبيع",
    address: "غزة -جباليا –شارع الكرمل",
    image: "assets/images/land1.jpg",
    images: [
      "assets/images/land1.jpg"
    ],
    description:
    "ارض زراعية تبلغ مساحتها 3  دونم مربع.",
  ),
  Productt(

    id: 3,
    price: "100",
    title: "مكتب للإيجار",
    address: "غزة -عمارة جاد",
    image: "assets/images/office3.jpg",
    images: ["assets/images/office3.jpg",],

    description:
    "الطابق الثالث ،تبلغ مساحة المكتب70 متر مربع يحتوي على 3مكاتب خشبية ويتوفر بالمول مصعد كهربائي ومولد طاقة على مدار ال24 ساعة  .",
  ),
];
