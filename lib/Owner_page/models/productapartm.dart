class Productapart {
  final int id;
  final String title, address, description, image, price;
  final List<String> images;

  Productapart({
    required this.id,
    required this.price,
    required this.title,
    required this.address,
    required this.description,
    required this.image,
    required this.images,
  });
}

List<Productapart> productsapart = [
  Productapart(
    id: 1,
    price: "52000",
    title: "منزل للبيع",
    address: "غزة-تل الهوى-بجوار مخبز اليازجي",
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
  Productapart(
    id: 2,
    price: "1990",
    title: "شقة للبيع",
    address: "الرمال - عمارة الرائد- قرب جامع فلسطين",
    image: "assets/images/ap1.jpg",
    images: [
      "assets/images/ap1.jpg",
      "assets/images/ap2.jpg",
      "assets/images/ap3.jpg",
      "assets/images/ap4.jpg",
      "assets/images/ap5.jpg",
      "assets/images/ap6.jpg",
      "assets/images/ap7.jpg",
    ],
    description:
        " تشطيب سوبر ديلوكس المساحة 200 متر مكونه من 3 غرف نوم + صالون كبير للضيوف +صالون مفتوح على المطبخ + حمامين + حمام خاص بغرفة النوم،تقع الشقة في الطابق السادس ( جنوبي- شرقي).",
  ),
  Productapart(
    id: 3,
    price: "2000",
    title: "شقة للبيع",
    address: "شارع الجلاء-عمارةالرائد-مقابل كلية غزة",
    image: "assets/images/a3.jpg",
    images: [
      "assets/images/a1.jpg",
      "assets/images/a2.jpg",
      "assets/images/a3.jpg",
      "assets/images/a4.jpg",
      "assets/images/a5.jpg",
      "assets/images/a6.jpg",
    ],
    description:
        " تشطيب سوبر ديلوكس المساحة 207 متر مكونه من 3 غرف نوم + صالون كبير للضيوف +صالون مفتوح على المطبخ + حمامين + حمام خاص بغرفة النوم،تقع الشقة في الطابق السادس ( شمالي - شرقي).",
  ),
  Productapart(
    id: 4,
    price: "1000",
    title: "شقة للبيع",
    address: "الزوايدة",
    image: "assets/images/aa3.jpeg",
    images: [
      "assets/images/aa3.jpeg",
      "assets/images/aa1.jpeg",
      "assets/images/aa2.jpeg",
    ],
    description:
        "شقة مساحة 140م تحتوي ع 3غرف حمامين وبلكونة وصالة.",
  ),
  Productapart(
    id: 5,
    price: "1500",
    title: "شقة للبيع",
    address: "الرمال-مفترق السرايا",
    image: "assets/images/app1.jpeg",
    images: [
      "assets/images/app1.jpeg",
      "assets/images/app2.jpeg",
      "assets/images/app3.jpeg",
    ],
    description:
        "شقة مساحة 160م تحتوي ع 3غرف حمامين وبلكونة و2صالة وممر واسع عند دخول الشقة.",
  ),

];
