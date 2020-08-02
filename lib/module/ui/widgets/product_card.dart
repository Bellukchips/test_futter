part of 'widgets.dart';

class ProductCard extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  ProductCard({this.img, this.title, this.price});
  @override
  Widget build(BuildContext context) {
    var _price = int.parse(price);
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: 80,
        color: Colors.white,
        width: 85,
        child: Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(img), fit: BoxFit.fill)),
                )
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width - 112 - 116 - 12,
                  child: Text(
                    title,
                    style: GoogleFonts.raleway().copyWith(fontSize: 15),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    NumberFormat.currency(
                            locale: "id_ID", decimalDigits: 0, symbol: "Rp ")
                        .format(_price),
                    style: pinkTextFont.copyWith(
                      fontSize: 15,
                    ))
              ],
            ),
            Container(
              width: 100,
              height: 30,
              child: RaisedButton(
                child: Text(
                  "Tambahkan",
                  style: whiteTextFont.copyWith(fontSize: 14),
                ),
                color: primaryColor,
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}
