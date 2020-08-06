part of 'widgets.dart';

class ProductCard extends StatefulWidget {
  final String img;
  final String name;
  final String price;
  final bool isSelected;
  final Function addItem;
  final int counter;
  final Function removeItem;
  final Function addToChart;
  ProductCard(this.name,{this.img,this.price,this.isSelected = false,this.addToChart,this.counter =1,this.addItem,this.removeItem});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    var _price = int.parse(widget.price);
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
                          image: NetworkImage(
                              widget.img),
                          fit: BoxFit.fill)),
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
                  width: MediaQuery.of(context).size.width -
                      112 -
                      116 -
                      12,
                  child: Text(
                    widget.name,
                    style: GoogleFonts.raleway()
                        .copyWith(fontSize: 15),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    NumberFormat.currency(
                        locale: "id_ID",
                        decimalDigits: 0,
                        symbol: "Rp ")
                        .format(_price),
                    style: pinkTextFont.copyWith(
                      fontSize: 15,
                    ))
              ],
            ),
            widget.isSelected
                ? ButtonItemCount(
              add: (){
                if(widget.addItem != null){
                  widget.addItem();
                }
              },
              remove: () {
                if(widget.removeItem != null){
                  widget.removeItem();
                }
              },
              countItem: widget.counter,
            )
                : ButtonAddChart(
              onTap: () {
                if(widget.addToChart != null){
                  widget.addToChart();
                }
              },
            )
          ],
        ));
  }
}
