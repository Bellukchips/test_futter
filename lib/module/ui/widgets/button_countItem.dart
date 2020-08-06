part of 'widgets.dart';
class ButtonAddChart extends StatelessWidget {
  final Function onTap;

  const ButtonAddChart({this.onTap});
  @override
  Widget build(BuildContext context) {
   return  InkWell(
      onTap: (){
        if(onTap != null){
          onTap();}

      },
      child: Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(5)),
          alignment: Alignment.center,
          child: Text(
            "Tambahkan",
            style: whiteTextFont.copyWith(fontSize: 14),
          ),),
    );
  }
}

class ButtonItemCount extends StatelessWidget {
  final Function add;
  final Function remove;
  final int countItem;

  const ButtonItemCount({this.add, this.remove, this.countItem});
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          onTap: () {
            if (remove != null) {
              remove();
            }
          },
          child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(5)),
              alignment: Alignment.center,
              child: Icon(
                Icons.remove,
                size: 10,
              )),
        ),
        Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            alignment: Alignment.center,
            child: Text("$countItem")),
        InkWell(
          onTap: () {
            if (add != null) {
              add();
            }
          },
          child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(5)),
              alignment: Alignment.center,
              child: Icon(
                Icons.add,
                size: 10,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
