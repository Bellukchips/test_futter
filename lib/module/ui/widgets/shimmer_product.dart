part of 'widgets.dart';

class ShimmerProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var container = Container(
      child: SizedBox(
        height: 80,
        width: 85,
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
    return container;
  }
}
