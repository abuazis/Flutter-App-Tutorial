import 'package:flutter/material.dart';
import 'package:flutter_app/ui/widgets/movie_box.dart';

class MainPage extends StatelessWidget {
  List<Color> colors = [Colors.red, Colors.green, Colors.blue];
  PageController controller = PageController(initialPage: 0, viewportFraction: 0.6);
  List<String> urls = [
    "https://images-na.ssl-images-amazon.com/images/I/81aP6k6h8vL._AC_SY741_.jpg",
    "https://i.pinimg.com/736x/93/c4/9f/93c49f511754128a0beca3c8bbb1aab5.jpg",
    "https://2.bp.blogspot.com/-y2BT140ggdA/WoFL8pbESAI/AAAAAAAADLU/42kfCa9ZO-458QzFihOA4MRi4W42UW88ACEwYBhgL/s1600/Danmachi%2Bposter.jpg",
    "https://i.pinimg.com/originals/c3/39/50/c33950d67c8489418ac96ebbde18349c.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Widget Slider"),
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: urls.length,
        itemBuilder: (context, index) => Center(
          child: MovieBox(urls[index]),
        ),
      ),
    );
  }
}
