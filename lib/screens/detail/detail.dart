import 'package:flutter/material.dart';
import 'package:nft_app_design/constants/colors.dart';
import 'package:nft_app_design/models/art.dart';
import 'package:nft_app_design/screens/detail/widgets/art_info.dart';
import 'package:nft_app_design/screens/detail/widgets/bidder_list.dart';
import 'package:nft_app_design/screens/detail/widgets/buy_button.dart';
import 'package:nft_app_design/screens/detail/widgets/detail_banner.dart';
import 'package:nft_app_design/screens/profile/widgets/tab_sliver_delegate.dart';

class DetailPage extends StatelessWidget {
  final Art art;
  DetailPage(this.art, {Key? key}) : super(key: key);

  final tabs = ['Info', 'Birds', 'History'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool inner) {
              return [
                SliverAppBar(
                  elevation: 0,
                  expandedHeight: 340,
                  backgroundColor: buttonColor,
                  leadingWidth: 80,
                  leading: _buildIcon(
                    context,
                    Icons.arrow_back_ios_new_outlined,
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: DetailBanner(art),
                  ),
                  pinned: true,
                ),
                SliverToBoxAdapter(
                  child: ArtInfo(art),
                ),
                SliverPersistentHeader(
                  delegate: TabSliverDelegate(
                    TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey[400],
                      indicatorColor: Colors.black,
                      isScrollable: true,
                      labelPadding: const EdgeInsets.only(
                        left: 0,
                        right: 40,
                      ),
                      tabs: tabs
                          .map((detailTab) => Tab(
                                child: Text(
                                  detailTab,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  pinned: true,
                )
              ];
            },
            body: TabBarView(
              children: [
                ListView(
                  children: const [],
                ),
                BidderList('birds', art.birds!),
                BidderList('history', art.history!)
              ],
            ),
          ),
        ),
        floatingActionButton: const ButButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  IconButton _buildIcon(
    BuildContext context,
    IconData icon,
  ) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      splashRadius: 25,
      icon: Icon(
        icon,
        size: 20,
        color: Colors.black,
      ),
    );
  }
}
