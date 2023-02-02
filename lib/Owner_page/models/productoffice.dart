class Productoffice {
  final int id;

  final String title, address, description, image,price;
  final List<String> images;


  Productoffice({
    required this.id,
    required this.price,
    required this.title,
    required this.address,
    required this.description,
    required this.image,
    required this.images,

  });
}

List<Productoffice> productsoffice = [
  Productoffice(
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
  Productoffice(

    id: 2,
    price: "200",
    title: "مكتب للإيجار",
    address: "غزة –برج وطن",
    image: "assets/images/office2.jpg",
    images: ["assets/images/office2.jpg",],

    description:
    "الطابق الثامن،تبلغ مساحة المكتب100 متر مربع يحتوي على 3مكاتب ويتوفر بالمول مصعد كهربائي ومولد طاقة على مدار ال24 ساعة  .",
  ),
  Productoffice(

    id: 3,
    price: "100",
    title: "مكتب للإيجار",
    address: "غزة -عمارة جاد",
    image: "assets/images/office3.jpg",
    images: ["assets/images/office3.jpg",],

    description:
    "الطابق الثالث ،تبلغ مساحة المكتب70 متر مربع يحتوي على 3مكاتب خشبية ويتوفر بالمول مصعد كهربائي ومولد طاقة على مدار ال24 ساعة  .",
  ),

  Productoffice(

    id: 4,
    price: "200",
    title: "مكتب للإيجار",
    address: "غزة -مفترق السرايا -عمارة جاد",
    image: "assets/images/office4.jpg",
    images: ["assets/images/office4.jpg",],

    description:
    "مكتب  مساحة 80متر الدور الرابعمكون من غرفتين وصاله وحمام ومطبخ بالاضافه للمصعد كهربائي وبئر مياةالبنايه حديثه.",
  ),



];
