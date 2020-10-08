import 'package:perfume_app_ui/models/perfume.dart';

//data of perfumes
final _rkGold = Perfume(
  imageUrl: 'assets/images/perfume1.png',
  name: 'RK Gold',
  rating: 4,
  price: 399,
  qty: 150,
  pure: 100,
  sex: 'UNI',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
  brand: 'RK',
);

final _roseDoor = Perfume(
  imageUrl: 'assets/images/perfume2.png',
  name: 'Rose Door',
  rating: 5,
  price: 299,
  qty: 100,
  pure: 100,
  sex: 'UNI',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
  brand: 'RK',
);

final _lyndel = Perfume(
  imageUrl: 'assets/images/perfume3.png',
  name: 'Lyndel',
  rating: 3,
  price: 219,
  qty: 100,
  pure: 100,
  sex: 'UNI',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
  brand: 'RK',
);

//perfume List
final List<Perfume> perfumeProducts = [
  _rkGold,
  _roseDoor,
  _lyndel,
];