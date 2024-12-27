import 'package:authentication/core/constants/constants.dart';
import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/ui/widgets/custom_sheet.dart';
import 'package:flutter/material.dart';

class AllitemsScreen extends StatefulWidget {
  const AllitemsScreen({super.key});

  @override
  State<AllitemsScreen> createState() => _AllitemsScreenState();
}

class _AllitemsScreenState extends State<AllitemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: AppThemes.Darkblue,
        // elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Add search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.white),
            onPressed: () {
              // Add filter functionality
              CustomModalBottomSheet.showCustomBottomSheet(context);
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.white,
        color: AppThemes.Mediumblue,
        onRefresh: () {
          return Future.delayed(
            Duration(seconds: 2),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // NoItemFoundCard(
            //   message: "We couldn't find anything matching your search.",
            //   onRetry: () {
            //     print("Retry clicked!");
            //   },
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Showing: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "Result of geniue pig",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  // DropdownButton(
                  //   menuMaxHeight: 4,
                  //   iconSize: 10,
                  //   items: [
                  //     DropdownMenuItem(
                  //       child: Text("SortBy"),
                  //     ),
                  //     DropdownMenuItem(
                  //       child: Text("Newly lost"),
                  //     ),
                  //     DropdownMenuItem(
                  //       child: Text(""),
                  //     ),
                  //     DropdownMenuItem(
                  //       child: Text("Old lost"),
                  //     ),
                  //   ],
                  //   onChanged: (value) {},
                  // )
                ],
              ),
            ),

            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemCount: 10, // Number of items
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(
                                  Constants.laptopImg,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Item Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "₹ 1,200",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Location • 2 days ago",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
