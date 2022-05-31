import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _headings = [
      'Profile Gallery',
      'Publish',
      'About',
      'Contact',
    ];

    final _clipImages = [
      'assets/images/sitting_on_stairs.png',
      'assets/images/cookie.png',
      'assets/images/sitting_on_stairs.png',
      'assets/images/cookie.png'
    ];

    final _imageLabels = ['bigbear444', 'bigpie43', 'bigbeor444', 'bigegg777'];
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //wallpaper
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: Image.asset(
                      'assets/images/wallpaper.png',
                      fit: BoxFit.cover,
                    )),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.orange,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Center(
                          child: Container(
                              height: 34,
                              width: 64,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: Text('Connect'),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      //profile
                      Row(
                        children: [
                          Image.asset('assets/images/male_passport.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                const Text(
                                  'CLAIRE WHITE',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                        Colors.purple,
                                        Colors.orange
                                      ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight)),
                                  child: const Center(
                                      child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  )),
                                )
                              ]),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/music_icon.png',
                                    height: 20,
                                    width: 15,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Billie Ellish . Your Power',
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.more_vert,
                            size: 40,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //message icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //tabs
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            4,
                            (index) => Container(
                              //todo:make well
                              width: index == 0 ? 120 : null,
                              child: (Column(
                                children: [
                                  Text(
                                    _headings[index],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  if (index == 0)
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Divider(
                                        thickness: 1.5,
                                        color: Colors.blue,
                                      ),
                                    )
                                ],
                              )),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //clips header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Clips',
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'See all',
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (_, index) => Container(
                                  height: 150,
                                  width: 110,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9)),
                                            child: Image.asset(
                                              _clipImages[index],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          left: 10,
                                          right: 10,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                'assets/images/male_passport.png',
                                                height: 30,
                                                width: 30,
                                              ),
                                              Image.asset(
                                                'assets/images/options.png',
                                                color: Colors.white,
                                                height: 15,
                                                width: 10,
                                                fit: BoxFit.contain,
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                            bottom: 15,
                                            left: 10,
                                            child: Column(
                                              children: [
                                                Text(
                                                  _imageLabels[index],
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  '2 mins ago',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Memories',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      //grid
                      StaggeredGrid.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                        children: [
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/laundry_place.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/plane_tail.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/man_with_bag.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/laundry_place.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/man_with_bag.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/sales_glass.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/cookie.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/wallpaper.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/laundry_place.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/sitting_on_stairs.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/cookie.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/laundry_place.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/sales_glass.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/laundry_place.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
