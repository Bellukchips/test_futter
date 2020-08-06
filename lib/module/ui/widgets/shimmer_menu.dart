part of 'widgets.dart';

class ShimmerLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.only(bottom: 4),
      child: Center(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
              width: 40,
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
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 10,
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
          ],
        ),
      ),
    );
    return Container(
      margin: EdgeInsets.only(left: 15,right: 15),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 5,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: card,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: card,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: card,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: card,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: card,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: card,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: card,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: card,
          ),
        ],
      ),
    );
  }
}
