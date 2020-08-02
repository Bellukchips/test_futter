part of 'widgets.dart';

class ShimmerLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 1,
      child: Container(
        height: 60,
        width: 60,
        child: Shimmer.fromColors(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [Colors.grey[100], Colors.grey[200]],
                    end: Alignment.centerRight,
                    begin: Alignment.centerLeft)),
          ),
          baseColor: Colors.grey[100],
          highlightColor: Colors.grey[200],
        ),
      ),
    );
    return GridView.count(
      crossAxisCount: 4,
      children: <Widget>[
        card,
        card,
        card,
        card,
        card,
        card,
        card,
        card,
      ],
    );
  }
}
