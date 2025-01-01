import 'package:authentication/core/constants/constants.dart';
import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/product_card.dart';
import 'package:authentication/presentation/ui/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  PageController controller = PageController();
  int _currentImageIndex = 0;
  final List<String> _imagePaths = [
    Constants.laptopImg,
    Constants.laptopImg,
    Constants.laptopImg,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      appBar: AppBar(
        backgroundColor: AppThemes.Darkblue,
        elevation: 0,
        title: const Text(
          "Product Name",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Slider Section
                Stack(
                  children: [
                    Container(
                      height: 300,
                      child: PageView.builder(
                        controller: controller,
                        itemCount: _imagePaths.length,
                        onPageChanged: (index) {
                          setState(() {
                            _currentImageIndex = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Image.asset(
                            _imagePaths[index],
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 180,
                      right: 0,
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: _imagePaths.length,
                        effect: WormEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          dotColor: Colors.white,
                          activeDotColor: AppThemes.Darkblue,
                        ),
                      ),
                    ),
                  ],
                ),

                // Content Section
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Time, Location, and Date Row
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Time Lost:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text("10:30 AM"),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Location:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text("Central Park"),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Date:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text("2024-12-04"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Description Section

                      const Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Divider(color: Colors.grey),
                      const SizedBox(height: 10),
                      Text(
                        "This HP laptop features a sleek design, powerful performance, and a crystal-clear display, perfect for professionals and students alike.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Divider(color: Colors.grey),

                      // List By Section
                      const Text(
                        "ListBy",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const CircleAvatar(maxRadius: 25),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Haroon"),
                              Text(
                                "Verified User",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Related Items Section
                      const Text(
                        "Related Items",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ProductCard();
                          },
                        ),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Fixed Chat Founder Button
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: AppElevatedButton(
              text: "Chat Founder",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
