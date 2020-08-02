part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectMenu = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
              child: ListView(
            children: <Widget>[
              Header(),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Text(
                  "Telusuri Jenis Produk",
                  style: blackTextFont.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, categoryState) {
                  if (categoryState is CategoryInitial) {
                    return ShimmerLoading();
                  } else if (categoryState is CategoryLoadingState) {
                    return ShimmerLoading();
                  } else if (categoryState is CategoryLoadedState) {
                    List<CategoryModel> category = categoryState.category;
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (ctx, index) {
                        return Container(
                            padding: EdgeInsets.all(8),
                            child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 1,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 4),
                                  width: 60,
                                  height: 60,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 30,
                                          child: Image(
                                            image: NetworkImage(
                                                category[index].image),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          category[index].name,
                                          style: GoogleFonts.raleway()
                                              .copyWith(fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                )));
                      },
                      itemCount: category.length,
                    );
                  } else if (categoryState is CategoryErrorState) {
                    return Text(categoryState.message);
                  } else {
                    return ShimmerLoading();
                  }
                }),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 100,
                  width: 330,
                  child: BlocBuilder<BannerBloc, BannerState>(
                      builder: (_, bannerState) {
                    if (bannerState is BannerInitial) {
                      return ShimmerBanner();
                    } else if (bannerState is BannerLoading) {
                      return ShimmerBanner();
                    } else if (bannerState is BannerLoaded) {
                      List<BannerModel> banner = bannerState.banner;
                      return ListView.builder(
                        itemBuilder: (_, index) => Container(
                          margin: EdgeInsets.only(
                              left: (index == 0) ? 15 : 0,
                              right: (index == banner.length - 1) ? 15 : 15),
                          child: BoxBanner(
                            url: banner[index].img,
                          ),
                        ),
                        itemCount: banner.length,
                        scrollDirection: Axis.horizontal,
                      );
                    } else if (bannerState is BannerError) {
                      return Text(bannerState.msg);
                    } else {
                      return ShimmerBanner();
                    }
                  })),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Produk Bestseller",
                      style: blackTextFont.copyWith(fontSize: 20),
                    ),
                    Text(
                      "Lihat Semua",
                      style: GoogleFonts.raleway()
                          .copyWith(fontSize: 15, color: primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 500,
                width: double.infinity,
                child: BlocBuilder<ProductBloc, ProductState>(
                    builder: (_, productState) {
                  if (productState is ProductInitial) {
                    return ShimmerProduct();
                  } else if (productState is ProductLoading) {
                    return ShimmerProduct();
                  } else if (productState is ProductLoaded) {
                    List<ProductModel> product = productState.product;
                    return ListView.builder(
                      reverse: true,
                      itemBuilder: (_, index) => Container(
                        child: ProductCard(
                          img: product[index].img,
                          price: product[index].price,
                          title: product[index].name,
                        ),
                      ),
                      itemCount: product.length,
                    );
                  } else if (productState is ProductError) {
                    return Text(productState.msg);
                  } else {
                    return ShimmerProduct();
                  }
                }),
              )
            ],
          )),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Material(
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(color: primaryColor),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(15, 33, 15, 15),
                  child: TextField(
                    style: GoogleFonts.raleway()
                        .copyWith(color: Colors.grey, fontSize: 18),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintStyle: GoogleFonts.raleway().copyWith(fontSize: 18),
                        hintText: "Cari sayur,bumbu dapur,lauk pauk..."),
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.only(top: 110, left: 15, right: 15),
          child: Container(
            height: 150,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 11,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(" Kamu Belanja Di: ",
                      style: GoogleFonts.raleway().copyWith(
                        fontSize: 15,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.store,
                        color: secondaryColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pasar Gunungpati",
                        style: blackTextFont.copyWith(fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("1,3 km",
                          style: GoogleFonts.raleway()
                              .copyWith(color: Colors.grey, fontSize: 13)),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 87,
                        height: 30,
                        child: RaisedButton(
                          child: Text(
                            "Ganti",
                            style: whiteTextFont.copyWith(fontSize: 16),
                          ),
                          color: primaryColor,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Lokasi Anda : Jl. Diponegoro, No.12 Kadipiro, Semarang...",
                      style: GoogleFonts.raleway().copyWith(color: Colors.grey),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
