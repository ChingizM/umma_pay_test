class CardList {
  int id;
  String iconLogo;
  String title;
  String subtitle;

  CardList({
    this.id,
    this.iconLogo,
    this.title,
    this.subtitle,
  });
}

final List<CardList> listCardList = [
  CardList(
    id: 1,
    title: 'Утром',
    iconLogo: 'assets/images/image_20.png',
    subtitle: 'Посмотреть',
  ),
  CardList(
    id: 2,
    title: 'Вечером',
    iconLogo: 'assets/images/image_21.png',
    subtitle: 'Посмотреть',
  ),
  CardList(
    id: 3,
    title: 'После молитвы',
    iconLogo: 'assets/images/image_22.png',
    subtitle: 'Посмотреть',
  ),
  CardList(
    id: 4,
    title: 'Важные дуа. Часть 1',
    iconLogo: 'assets/images/image_23.png',
    subtitle: 'Посмотреть',
  ),
];
