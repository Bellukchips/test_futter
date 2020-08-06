part of 'widgets.dart';

class ShimmerProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var container = Container(
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
                  child:  Shimmer.fromColors(
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
                  child:  Shimmer.fromColors(
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
                  height: 5,
                  child:  Shimmer.fromColors(
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
                )
              ],
            ),
            Container(
              width: 100,
              height: 30,
              child:  Shimmer.fromColors(
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
        ));
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        container,
        SizedBox(
          height: 5,
        ),
        container,
        SizedBox(
          height: 5,
        ),
        container,
        SizedBox(
          height: 5,
        ),
        container,
      ],
    );
  }
}
