import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Container Images(String url){

    return Container(
      color: Colors.black,
      height: 180,
      width: 180,
    // child: Image(image: AssetImage())
      child: Image.network(url,fit: BoxFit.fill,),
      margin: EdgeInsets.all(8),
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,

        body: Column(
          children: [
Row(
children: [
  Images("https://i.pinimg.com/originals/d2/16/f8/d216f82be6d9380d12af65bac3655bd3.jpg"),
  Images("https://i.pinimg.com/originals/b6/35/60/b6356086e1f8f85d9a53d2677e4ea44a.jpg")
],
),
            Row(
              children: [
                Images("https://www.care.com/c/wp-content/uploads/sites/2/2021/03/memes-for-kids-7-796x1024.png "),
                Images("https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1541938379i/42751298.jpg")
              ],
            ),
            Row(
              children: [
                Images("https://i.pinimg.com/200x150/2b/30/38/2b3038414a2921486f693c0d9dd8ef1f.jpg"),
                Images("https://i.ytimg.com/vi/7MNQ-K7Qqms/sddefault.jpg"),
              ],
            ),
            Row(
              children: [
                Images("https://www.askideas.com/wp-content/uploads/2016/11/Crazy-People-Dont-Know-They-Are-Crazy-Funny-Meme.jpg"),
                Images("https://www.care.com/c/wp-content/uploads/sites/2/2021/03/memes-for-kids-7-796x1024.png"),
              ],
            )

          ],
        )
      ),
    );
  }
}
