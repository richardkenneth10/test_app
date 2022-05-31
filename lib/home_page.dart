import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  final _gridData = [
    {
      'image': 'assets/images/laundry_place.png',
      'grid_area': [2, 1],
    },
    {
      'image': 'assets/images/plane_tail.png',
      'grid_area': [1, 1],
    },
    {
      'image': 'assets/images/man_with_bag.png',
      'grid_area': [1, 2],
    },
    {
      'image': 'assets/images/laundry_place.png',
      'grid_area': [1, 1],
    },
    {
      'image': 'assets/images/man_with_bag.png',
      'grid_area': [1, 1],
    },
    {
      'image': 'assets/images/sales_glass.png',
      'grid_area': [2, 2],
    },
    {
      'image': 'assets/images/cookie.png',
      'grid_area': [1, 1],
    },
    {
      'image': 'assets/images/wallpaper.png',
      'grid_area': [2, 1],
    },
    {
      'image': 'assets/images/laundry_place.png',
      'grid_area': [1, 1],
    },
    {
      'image': 'assets/images/sitting_on_stairs.png',
      'grid_area': [1, 2],
    },
    {
      'image': 'assets/images/cookie.png',
      'grid_area': [1, 1],
    },
    {
      'image': 'assets/images/laundry_place.png',
      'grid_area': [1, 1],
    },
    {
      'image': 'assets/images/sales_glass.png',
      'grid_area': [2, 2],
    },
    {
      'image': 'assets/images/laundry_place.png',
      'grid_area': [1, 1],
    },
  ];

  final _imageLabels = ['bigbear444', 'bigpie43', 'bigbeor444', 'bigegg777'];

  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            //wallpaper
            _buildWallpaper(),
            //main
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    //profile
                    _buildProfileData(),
                    const SizedBox(
                      height: 10,
                    ),
                    //message icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.message,
                          color: Color(0xFF305A7C),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //tabs
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (index) => Expanded(
                          child: InkWell(
                            onTap: () => setState(() {
                              _tabIndex = index;
                            }),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: (Column(
                                children: [
                                  Text(
                                    _headings[index],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF305A7C),
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Divider(
                                      thickness: 1.5,
                                      color: index == _tabIndex
                                          ? const Color(0xFF305A7C)
                                          : Colors.transparent,
                                    ),
                                  )
                                ],
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //clips header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Clips',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF305A7C),
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF305A7C),
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _buildClips(),
                    const SizedBox(
                      height: 30,
                    ),
                    //memories header
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Memories',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF305A7C),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //grid
                    _buildImagesGrid(),
                  ],
                ))
          ],
        ));
  }

  Widget _buildWallpaper() {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Stack(
        children: [
          //image
          Positioned.fill(
              child: Image.asset(
            'assets/images/wallpaper.png',
            fit: BoxFit.cover,
          )),
          //connect box
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
    );
  }

  Widget _buildClips() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (_, index) => SizedBox(
                height: 150,
                width: 110,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9)),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _imageLabels[index],
                                style: const TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                '2 mins ago',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              )),
    );
  }

  Widget _buildImagesGrid() {
    return StaggeredGrid.count(
        crossAxisCount: 3,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        children: _gridData
            .map((gridItem) => StaggeredGridTile.count(
                  crossAxisCellCount: (gridItem['grid_area']! as List<int>)[0],
                  mainAxisCellCount: (gridItem['grid_area']! as List<int>)[1],
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      image: DecorationImage(
                        image: AssetImage(gridItem['image']! as String),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ))
            .toList());
  }

  Widget _buildProfileData() {
    return Row(
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
                    color: Color(0xFF305A7C),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.purple, Colors.orange],
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
                  style: TextStyle(color: Color(0xFF305A7C)),
                )
              ],
            )
          ],
        ),
        const Spacer(),
        const Icon(
          Icons.more_vert,
          size: 40,
          color: Color(0xFF305A7C),
        )
      ],
    );
  }
}
