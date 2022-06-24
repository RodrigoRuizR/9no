import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/view_emergente.dart';

import 'package:flutter_application_1/src/splash/styles/colors/colors_views.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int pages = 0;
  PageController controller = PageController();
  List<String> images = [
    'https://i.pinimg.com/originals/b6/f6/e7/b6f6e7ba8a527fd94cb83520a35a4122.png',
    'https://i.pinimg.com/736x/97/de/3e/97de3e04a584b6c9be72ab49d11b2c49.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1GbWEQdz7s2ahM9xmtyQNV7CsFbCJIBt-Lg&usqp=CAU'
  ];


  List<String> gridImages = [
    'https://i.pinimg.com/736x/8b/0b/86/8b0b864a6c2b6df1db6acfc422bd7668.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/51T7Wqa5-ZS.jpg',
    'https://i.pinimg.com/originals/33/b2/7c/33b27cf3e24dec9c547799d2ce8e206e.jpg',
    'https://i.etsystatic.com/25795984/r/il/ff24f5/3010246706/il_340x270.3010246706_52d4.jpg',

    'https://i.pinimg.com/736x/8b/0b/86/8b0b864a6c2b6df1db6acfc422bd7668.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/51T7Wqa5-ZS.jpg',
    'https://i.pinimg.com/originals/33/b2/7c/33b27cf3e24dec9c547799d2ce8e206e.jpg',
    'https://i.etsystatic.com/25795984/r/il/ff24f5/3010246706/il_340x270.3010246706_52d4.jpg',

    'https://i.pinimg.com/736x/8b/0b/86/8b0b864a6c2b6df1db6acfc422bd7668.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/51T7Wqa5-ZS.jpg',
    'https://i.pinimg.com/originals/33/b2/7c/33b27cf3e24dec9c547799d2ce8e206e.jpg',
    'https://i.etsystatic.com/25795984/r/il/ff24f5/3010246706/il_340x270.3010246706_52d4.jpg',

    'https://i.pinimg.com/736x/8b/0b/86/8b0b864a6c2b6df1db6acfc422bd7668.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/51T7Wqa5-ZS.jpg',
    'https://i.pinimg.com/originals/33/b2/7c/33b27cf3e24dec9c547799d2ce8e206e.jpg',
    'https://i.etsystatic.com/25795984/r/il/ff24f5/3010246706/il_340x270.3010246706_52d4.jpg'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _changeImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SAI PAGE'),
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 216, 121, 153)),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 90),
            height: 60,
            width: 170,
            child: Image.asset('assets/images/splash.png'),
          )
        ],
        backgroundColor: Color.fromARGB(255, 31, 118, 177),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.headphones),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Config',
          ),
        ],
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color.fromARGB(255, 31, 118, 177),
        currentIndex: 1,
        onTap: (index) {},
        // backgroundColor: ColorSelect.txtBoHe,
      ),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 20),
            width: double.infinity,
            height: 150,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  pages = value;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) => Image.asset(
                'assets/images/splash.png',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      List.generate(3, (index) => animatedMethod(index: index)),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            color: Colors.white,
            width: double.infinity,
            height: 70,
            child: CarouselSlider(
              options: CarouselOptions(
                disableCenter: true,
                viewportFraction: 0.3,
              ),
              items: images
                  .map((item) => Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(item),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
            width: double.infinity,
            height: 300,
            color: Colors.white,
            child: GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 4,
              children: gridImages.map((item) => _createCards(item)).toList(),
            ),
          )
        ],
      ),
    );
  }

  Card _createCards(String image) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: InkWell(
          onTap: () async {
            await showDialog(
                context: context,
                builder: (_) => DialogContainer(image: image));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ));
  }

  AnimatedContainer animatedMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: pages == index
              ? ColorsSelect.paginatorNext
              : ColorsSelect.txtBoSubHe),
      height: 5,
      width: pages == index ? 20 : 15,
      duration: kThemeAnimationDuration,
    );
  }

  void _changeImage() {
    Timer.periodic(const Duration(seconds: 4), (timer) {
      if (pages == 2) {
        controller.jumpToPage(controller.initialPage);
      } else {
        controller.nextPage(
            duration: const Duration(seconds: 4), curve: Curves.easeIn);
            
      }
    });
  }
}