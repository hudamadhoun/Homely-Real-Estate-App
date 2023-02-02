class Productland {
  final int id;

  final String title, address, description, image, price;
  final List<String> images;


  Productland(
      {required this.id,
      required this.price,
      required this.title,
      required this.address,
      required this.description,
      required this.image,
      required this.images,
     });
}

List<Productland> productsland = [
  Productland(

    id: 1,
    price: "44000",
    title: "أرض للبيع",
    address: "غزة -تل الهوى-جنوب دوار الخور",
    image: "assets/images/ll.jpg",
    images: [
      "assets/images/ll.jpg",
    ],
    description: "قطعة ارض تبلغ مساحتها 250 متر مربع.",
  ),
  Productland(
    id: 2,
    price: "10000",
    title: "أرض ايجار لموسم تضمين العنب",
    address: " غزة –الشيخ رضوان –قرب مسجد النور",
    image: "assets/images/land.jpg",
    images: [
      "assets/images/land.jpg"
    ],
    description:
        "ارض زراعية تبلغ مساحتها 2 دونم مربع  مزروعة عنب خليلي اسود وعنب اخضر.",
  ),
  Productland(

    id: 3,
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

  Productland(
    id: 4,
    price: "19600",
    title: "قطعه ارض للبيع",
    address: " الزهراء -مدينة غزة الجديده",
    image: "assets/images/landd.jpg",
    images: [
      "assets/images/landd.jpg"
    ],
    description:
    "ارض للبيع مساحه 700 متر.",
  ),

];
