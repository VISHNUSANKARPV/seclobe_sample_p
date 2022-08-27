import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma_ui/utils/theme/theme.dart';

import 'package:figma_ui/utils/widgets/category_card.dart';
import 'package:figma_ui/utils/widgets/commen_card.dart';
import 'package:figma_ui/utils/widgets/common_widget.dart';
import 'package:figma_ui/utils/widgets/job_card.dart';
import 'package:figma_ui/utils/widgets/slider_images.dart';
import 'package:figma_ui/utils/widgets/used_servicescard.dart';
import 'package:figma_ui/utils/widgets/vehicle_servicecard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<IconData> firstRowicon = [
    Icons.construction,
    Icons.fact_check,
    Icons.storefront,
    Icons.work_outline
  ];

  final List<String> firstRowText = ["services", "Enquiry", "Store", "Job"];

  final List<IconData> secondRowicon = [
    Icons.newspaper,
    Icons.directions_car,
    Icons.fastfood,
    Icons.more_horiz_outlined
  ];

  final List<String> secondRowText = [
    "News",
    "service",
    "Eats",
    "More"
  ];

  final List<IconData> vehicleFirstrow = [
    Icons.car_crash,
    Icons.two_wheeler,
    Icons.local_car_wash
  ];

  final List<String> vTextFirstrow = [
    "service",
    "Bullet",
    "Car wash",
  ];
   final List<IconData> vehicle2Firstrow = [
    Icons.airport_shuttle,
    Icons.motorcycle,
    Icons.more_horiz_outlined
  ];

  final List<String> v2TextFirstrow = [
    "Vaan",
    "Bike",
    "More",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[darkPrimary, primary])),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/Screenshot from 2022-08-26 21-39-53.png",
            ),
          ),
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 25,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.black,
                  size: 18,
                ),
                Text(
                  "Palazhi,Kozhikode,67..",
                  style: TextStyle(color: Colors.black, fontSize: 11),
                )
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 25,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: size.height * 0.075,
                  width: size.width * 1,
                  color: Colors.grey[350],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  child: Container(
                    height: size.height * 0.04,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                          disabledBorder:  const OutlineInputBorder(borderSide: BorderSide.none),
                          errorBorder:  const OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:  const OutlineInputBorder(borderSide: BorderSide.none),
                          border:  const OutlineInputBorder(borderSide: BorderSide.none),
                          label: Row(
                            children: [
                              const Text(
                                        "Search anything....",
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                              Flexible(
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    height: 400.0,
                                    autoPlay: true,
                                    scrollDirection: Axis.vertical,
                                    autoPlayAnimationDuration: const Duration(milliseconds:1000),
                                    autoPlayInterval: const Duration(milliseconds:2000),
                                    
                                  ),
                                  items: ['News', 'stores', 'eat', 'mobile'].map((i) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return Text(
                                          i,
                                          style: const TextStyle(fontSize: 14.0),
                                        );
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.white,
              width: double.infinity,
              height: size.height * 0.4,
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.28,
                    width: size.width * 1,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [darkPrimary, primary]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 7),
                                child: CategoriesCard(
                                    icon: firstRowicon[index],
                                    text: firstRowText[index]),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 7),
                                child: CategoriesCard(
                                    icon: secondRowicon[index],
                                    text: secondRowText[index]),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/Screenshot from 2022-08-27 00-46-54.png",
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.grey[200],
              height: size.height * 0.28,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Vehicle Services",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: ListView.builder(
                        padding: const EdgeInsets.only(top: 10),
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: VehicleServices(
                                icon: vehicleFirstrow[index],
                                text: vTextFirstrow[index]),
                          );
                        }),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 10),
                      primary: false,
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: VehicleServices(
                              icon: vehicle2Firstrow[index],
                              text: v2TextFirstrow[index]),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CommonWidget(heading: "Home Maintanance", widget: JobCard()),
            const Padding(
              padding: EdgeInsets.all(12),
              child: SlideShow(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                height: size.height * 0.24,
                width: size.width * double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Most Used Services",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const UsedCard();
                          }),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: SlideShow(),
            ),
            const CommonWidget(
                heading: "Store",
                widget:  CommenCard(
                    url: "assets/Mi-10.webp",
                    price: "23000/-",
                    oldPrice: "26000/-",
                    product: "Y15s")),
            const SizedBox(
              height: 10,
            ),
            const CommonWidget(
                heading: "Eats",
                widget: CommenCard(
                    url: "assets/gettyimages-1058029096-612x612.jpg",
                    price: "100/-",
                    oldPrice: "130/-",
                    product: "Biriyani")),
            const SizedBox(height: 10),
            const CommonWidget(heading: "Home Maintanance", widget: JobCard()),

            SizedBox(height: size.height*0.1,)

          ],
        ),
      ),
    );
  }
}
