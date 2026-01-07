import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project1/pages/calendar_page.dart';

class BulletinPage extends StatelessWidget {
  const BulletinPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaggeredGridTile> cardTile = [
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1,
        child: BackGroundTile(
          backgroundColor: Colors.red,
          icondata: Icons.home,
        ),
      ),

      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1,
        child: BackGroundTile(
          backgroundColor: Colors.grey,
          icondata: Icons.calendar_month,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime(2030),
            );
            if (pickedDate != null) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CalendarPage()),
              );
            }
          },
        ),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 4,
        mainAxisCellCount: 2,
        child: BackGroundTile(
          backgroundColor: Colors.deepPurpleAccent,
          icondata: Icons.music_note,
        ),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 4,
        mainAxisCellCount: 2,
        child: BackGroundTile(
          backgroundColor: Colors.blue,
          icondata: Icons.access_alarms,
        ),
      ),
    ];

    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: [cardTile[0], cardTile[1]],
          ),
        ),
        CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/carousel_image_1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/carousel_image_2.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/carousel_image_3.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/carousel_image_4.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/carousel_image_5.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/carousel_image_6.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/carousel_image_7.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/carousel_image_8.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/carousel_image_9.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],

          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.9,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: [cardTile[2], cardTile[3]],
          ),
        ),
      ],
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;
  final VoidCallback? onTap;

  const BackGroundTile({
    super.key,
    required this.backgroundColor,
    required this.icondata,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: backgroundColor,
      child: InkWell(
        onTap: onTap,
        child: Center(child: Icon(icondata, color: Colors.white, size: 40)),
      ),
    );
  }
}
