import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../layout/grid_layout.dart';
import '../../widgets/app_bar/custom_appbar.dart';
import '../../widgets/brands/brand_card.dart';
import '../../widgets/brands/brands.dart';
import '../../widgets/container/search_container.dart';
import '../../widgets/tab_bar/category_tab.dart';
import '../../widgets/tab_bar/tab_bar.dart';
import '../../widgets/text/section_heading.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: const CustomAppBar(
          showBackArrow: false,
          title: Text("Store"),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 350,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(24),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SearchContainer(
                        text: 'Search in store',
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SectionHeading(
                        showActionButton: true,
                        title: "Featured Brands",
                        buttonTitle: "View All",
                        onPressed: () {
                          Get.to(const AllBrandsScreen());
                        },
                      ),
                      GridLayout(
                        itemCount: 4,
                        mainAxisExtent: 60,
                        itemBuilder: (_, index) {
                          return const BrandCardWidget(
                            showBorder: true,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                bottom: const AppTabBar(
                  tab: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Furniture")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Clothes")),
                    Tab(child: Text("Cosmetics"))
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
