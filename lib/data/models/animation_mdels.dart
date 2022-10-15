import 'package:ecommer_project/core/constants/imageassets.dart';

class TravelPlace{
  TravelPlace({
    required this.name,
    required this.user,
    required this.imageUrl,
    this.id='',
    this.description = "",
    this.shared = 0,
    this.likes = 0,
    this.locationDesc ="",
    this.statusTag = StatusTag.puplar,
  });
  final String id;
  final String name;
  final TravelUser user;
  final StatusTag statusTag;
  final int shared;
  final int likes;
  final String locationDesc;
  final String description;
  final List<String> imageUrl;

static final place =[
  TravelPlace(
    id: '1',
    name: 'Review Maya',
    likes: 500,
    shared: 240,
    description: "It is a good place to travel for it you should have to view all side of rever to learn all about the rever",
    imageUrl: [AppImageAsset.onBoardingImageOne],
    statusTag:  StatusTag.puplar,
    user: TravelUser.mario,
    locationDesc: "Qenia / manam",
  ),
  TravelPlace(
    id: '2',
    name: ' Maya',
    likes: 500,
    shared: 240,
    description: "It is a good place to travel for it you should have to view all side of rever to learn all about the rever",
    imageUrl: [AppImageAsset.onBoardingImageOne],
    statusTag:  StatusTag.puplar,
    user: TravelUser.mario,
    locationDesc: "Qenia / manam",
  ),
  TravelPlace(
    id: '3',
    name: 'Review',
    likes: 500,
    shared: 240,
    description: "It is a good place to travel for it you should have to view all side of rever to learn all about the rever",
    imageUrl: [AppImageAsset.onBoardingImageOne],
    statusTag:  StatusTag.puplar,
    user: TravelUser.mario,
    locationDesc: "Qenia / manam",
  ),
];

}
class TravelUser{
final String? name;
final String? urlPhoto;
const TravelUser(this.name,this.urlPhoto);

static TravelUser lili = 
const TravelUser(
  'Liliy',
  AppImageAsset.onBoardingImageOne,
);
static TravelUser mario = 
const TravelUser(
  'mairo',
  AppImageAsset.onBoardingImageOne,
);
static TravelUser khaled = 
const TravelUser(
  'khaled',
  AppImageAsset.onBoardingImageOne,
);
static List<TravelUser> users = [lili,mario,khaled];
}
enum StatusTag{puplar, event}