import 'package:nft_app_design/models/art.dart';
import 'package:nft_app_design/models/bidder.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  List<Art>? creations;
  List<Art>? collections;

  Profile({
    this.imgUrl,
    this.name,
    this.twitter,
    this.desc,
    this.email,
    this.creations,
    this.collections,
  });

  static Profile generateProfile() {
    return Profile(
      imgUrl: 'assets/images/avatar.png',
      name: 'Shubhranshu Arya',
      twitter: '@botCoder',
      desc:
          'Application developer from Mumbai, India. His work is all about bringing designs into reality.',
      email: 'bot@coder.com',
      creations: [
        Art(
          imgUrl: 'assets/images/create1.jpeg',
          name: 'Consume',
          price: 1.53,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create2.jpeg',
          name: 'Erode',
          price: 1.46,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create3.jpeg',
          name: 'Hallucite',
          price: 1.82,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create4.jpeg',
          name: 'Epouse',
          price: 1.24,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create5.jpeg',
          name: 'Negor',
          price: 1.34,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
      collections: [
        Art(
          imgUrl: 'assets/images/collection1.jpeg',
          name: 'Avichoir',
          price: 1.56,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection2.jpeg',
          name: 'Senses',
          price: 0.87,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection3.jpeg',
          name: 'Drone',
          price: 1.69,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection4.jpeg',
          name: 'Lucide',
          price: 3.45,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection5.jpeg',
          name: 'Xtract',
          price: 5.67,
          desc:
              'NFTs are unique cryptographic tokens that exist on a blockchain and cannot be replicated. NFTs can be used to represent real-world items like artwork and real-estate.',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
    );
  }
}
