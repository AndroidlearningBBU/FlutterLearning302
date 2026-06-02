import 'package:flutter/material.dart';

class GirdviewScreen extends StatefulWidget {
  const GirdviewScreen({super.key});

  @override
  State<GirdviewScreen> createState() => _GirdviewScreenState();
}

class _GirdviewScreenState extends State<GirdviewScreen> {
  bool isGridCount = true;
  List<String> Listimages = [];
  @override
  void initState() {
    _getData();
    super.initState();
  }
  _getData(){
    Listimages = [
      "assets/images/1.jpg",
      "assets/images/2.jpg",
      "assets/images/3.jpg",
      "assets/images/4.jpg",
      "assets/images/5.jpg",
      "assets/images/6.jpg",
   ];
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
          backgroundColor : Colors.deepPurple,
          onPressed: (){
            setState(() {
              isGridCount = !isGridCount;
            });
          },
        child: isGridCount ?
        Icon(Icons.category,color: Colors.white,):
        Icon(Icons.ac_unit,color: Colors.white,),
      ),
      appBar: AppBar(
        title: const Text("Grid View"),
        backgroundColor: Colors.deepPurple,
      ),
      body: isGridCount ?_GridViewCount(Listimages): _GridViewExtent(Listimages),

    );
  }
  _GridViewExtent(List<String>images){
    return GridView.extent(
      padding: EdgeInsets.only(left: 10,right: 10),
      maxCrossAxisExtent: 250,
      crossAxisSpacing: 20,
      children: List.generate(images.length,
              (index) => Image.asset(images[index],
                fit: BoxFit.fitWidth,
              )
      ),
    );
  }
  _GridViewCount(List<String>images){
    return GridView.count(
      padding: EdgeInsets.only(left: 10,right: 10),
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 4,
      children: List.generate(images.length,
              (index) => Image.asset(images[index])
      ),
    );
  }

}
