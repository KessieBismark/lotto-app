class CardModel {
  final String title;
  final String imageLink;
  final dynamic description;
  final CardDetailModel cardDetail;

  CardModel(
      {required this.title,
      required this.imageLink,
      required this.description,
      required this.cardDetail});
}

class CardDetailModel {
  final String title;
  final String imageLink;
  final dynamic description;
  final String paragraph;
  final String? paragraph2;
  final List<String>? list;

  CardDetailModel(
      {required this.title,
      required this.imageLink,
      required this.description,
      required this.paragraph,
      this.paragraph2,
      this.list});
}
