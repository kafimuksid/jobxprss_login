//import 'package:flutter/widgets.dart';

class PublisherModel {
  final String name;

  final String email;

  // ignore: non_constant_identifier_names
  final String published_post;

  final String avatarUrl;

  // ignore: non_constant_identifier_names
  PublisherModel({this.name, this.email, this.published_post, this.avatarUrl});
}

List<PublisherModel> dummyData = [
  new PublisherModel(
    name: "Publisher Name",
    email: "Publisher Email",
    published_post: '''No. of published
    post today''',
    avatarUrl:
        "https://image.freepik.com/free-icon/important-person_318-10744.jpg",
  ),
  new PublisherModel(
      name: "Kafi",
      email: "muksid@ishraak.com",
      published_post: "13",
      avatarUrl:
          "https://instagram.fdac5-1.fna.fbcdn.net/v/t51.2885-19/s150x150/120749212_179600827121344_3677071885059995137_n.jpg?_nc_ht=instagram.fdac5-1.fna.fbcdn.net&_nc_ohc=1tPizRAHXEoAX_E0qVI&tp=1&oh=e6d2eafd6a402ab86e9cdcfcd945278e&oe=5FF6AA46"),
  new PublisherModel(
      name: "Mando",
      email: "mando@starwars.com",
      published_post: "25",
      avatarUrl:
          "https://i.pinimg.com/originals/ce/a8/2f/cea82fcb44b318dfc4536abe624efa6a.png"),
  new PublisherModel(
      name: "Goku",
      email: "kakarot@universe13.web",
      published_post: "03",
      avatarUrl:
          "https://i.pinimg.com/originals/a0/18/98/a01898d1a6152cb5431a0ca56df25623.jpg"),
  new PublisherModel(
      name: "MacTavish",
      email: "cpt.mactavish@specialforces.com",
      published_post: "06",
      avatarUrl:
          "https://i.pinimg.com/736x/85/63/69/8563694b1e090d435b73456ba0204ddf.jpg"),
  new PublisherModel(
      name: "Lara Croft",
      email: "lara@tombrider.com",
      published_post: "12",
      avatarUrl: "https://s1.1zoom.me/big0/292/337436-blackangel.jpg"),
  new PublisherModel(
      name: "Maximus",
      email: "maximus@gladiator.com",
      published_post: "00",
      avatarUrl:
          "https://static.wikia.nocookie.net/deadliestfiction/images/d/dd/MaximusGeneral.jpg/revision/latest/top-crop/width/360/height/450?cb=20180814195414"),
  new PublisherModel(
      name: "Neo",
      email: "the_one@matrix.net",
      published_post: "09",
      avatarUrl:
          "https://cdn.onebauer.media/one/empire-images/features/560ebb1950e6c513721c2df5/neo-matrix-keanu-reeves.jpg?quality=50&width=1000&ratio=1-1&resizeStyle=aspectfit&format=jpg"),
  new PublisherModel(
      name: "Kylo Ren",
      email: "ben@starwars.com",
      published_post: "14",
      avatarUrl:
          "https://i.etsystatic.com/13838812/r/il/21c9bc/2272514903/il_794xN.2272514903_oa76.jpg"),
  new PublisherModel(
      name: "Joker",
      email: "joker@dcuniverse.org",
      published_post: "45",
      avatarUrl:
          "https://i.pinimg.com/originals/77/31/17/77311722ec33c000862e5dd1f11c8eff.jpg"),
];
