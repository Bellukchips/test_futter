part of 'widgets.dart';

class BoxBanner extends StatelessWidget {
  final Function onTap;
  final String url;
  BoxBanner({this.url, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 330,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [Colors.grey[100], Colors.grey[200]],
                end: Alignment.centerRight,
                begin: Alignment.centerLeft),
            image:
                DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
      ),
    );
  }
}
