import 'package:flutter/material.dart';
import 'package:nft_app_design/models/profile.dart';
import 'package:nft_app_design/screens/profile/widgets/custom_grid.dart';
import 'package:nft_app_design/screens/profile/widgets/personal_info.dart';
import 'package:nft_app_design/screens/profile/widgets/tab_sliver_delegate.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.generateProfile();
  final tabs = [
    'Creations',
    'Collections',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBox) {
              return [
                SliverToBoxAdapter(
                  child: PersonalInfo(profile),
                ),
                SliverPersistentHeader(
                  delegate: TabSliverDelegate(
                    TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey[400],
                      indicatorColor: Colors.black,
                      tabs: tabs
                          .map((tabName) => Tab(
                                child: Text(
                                  tabName,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(
              children: [
                CustomGrid('Creations', profile.creations!),
                CustomGrid('Collections', profile.collections!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
