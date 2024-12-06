import 'package:authentication/core/constants/constants.dart';
import 'package:authentication/core/themes/app_themes.dart';
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
        title: Text(
          "Product Name",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
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
                    dotColor: Colors.white,
                    activeDotColor: AppThemes.Darkblue,
                  ),
                ),
              ),
            ],
          ),

          // Content Section
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // // Time, Location, and Date Row
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     _buildInfoCard(Icons.access_time, "Time", "12:00 PM"),
                    //     _buildInfoCard(
                    //         Icons.location_on, "Location", "New York"),
                    //     _buildInfoCard(
                    //         Icons.date_range, "Date", "Monday, May 19, 2022"),
                    //   ],
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Time Lost:",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("10:30 AM"),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Location:",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Central Park"),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("2024-12-04"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Description Section
                    Text(
                      "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.blue[300], thickness: 1.5),
                    SizedBox(height: 10),
                    Text(
                      "This HP laptop features a sleek design, powerful performance, and a crystal-clear display, perfect for professionals and students alike.",
                      style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Chat Founder Button fixed at the bottom
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.blue[800],
                elevation: 5,
                minimumSize: Size(double.infinity, 60),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat_bubble, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Chat Founder",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//   Widget _buildInfoCard(IconData icon, String title, String value) {
//     return Expanded(
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 5),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 8,
//               spreadRadius: 2,
//             ),
//           ],
//         ),
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           children: [
//             Icon(icon, color: Colors.blue[800], size: 30),
//             SizedBox(height: 8),
//             Text(
//               title,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//                 color: Colors.grey[700],
//               ),
//             ),
//             SizedBox(height: 5),
//             Text(
//               value,
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.grey[600],
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
}
