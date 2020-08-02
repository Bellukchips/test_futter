part of 'widgets.dart';

class ShimmerBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var container = Container(
      child: SizedBox(
        height: 100,
        width: 330,
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
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        SizedBox(width: 15),
        container,
        SizedBox(width: 5),
        container,
      ],
    );
  }
}
