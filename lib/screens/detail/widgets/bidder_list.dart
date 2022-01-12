import 'package:flutter/material.dart';
import 'package:nft_app_design/models/bidder.dart';
import 'package:nft_app_design/screens/detail/widgets/bidder_card.dart';

class BidderList extends StatelessWidget {
  final String scrollKey;
  final List<Bidder> bidderList;
  const BidderList(this.scrollKey, this.bidderList, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListView.separated(
        key: PageStorageKey(scrollKey),
        itemBuilder: (_, index) => BidderCard(bidderList[index]),
        separatorBuilder: (_, index) => const SizedBox(
          height: 16,
        ),
        itemCount: bidderList.length,
      ),
    );
  }
}
