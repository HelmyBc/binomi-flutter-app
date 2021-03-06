import 'package:binomi/models/models.dart';

User currentUser = const User(
    name: 'Helmy Bouchiha',
    imageUrl: 'assets/images/my_image_low.jpg',
    university: 'ENET\'Com'
    );

final List<User> onlineUsers = [
  const User(
      name: 'David Brooks',
      imageUrl: 'assets/images/user10.jpg',
      university: 'enetcom'),
  const User(
      name: 'Hamdi Hadda',
      imageUrl: 'assets/images/user9.jpg',
      university: 'Sup\'com'),
  const User(
      name: 'Matthew Hinkle',
      imageUrl: 'assets/images/user8.jpg',
      university: 'enetcom'),
  const User(
      name: 'Amy Smith',
      imageUrl: 'assets/images/user7.jpg',
      university: 'enetcom'),
  const User(
      name: 'Ed Morris',
      imageUrl: 'assets/images/user6.jpg',
      university: 'enetcom'),
  const User(
      name: 'Ilyess Ben Samir',
      imageUrl: 'assets/images/user5.jpg',
      university: 'Iset Rades'),
  const User(
      name: 'Paul Pinnock',
      imageUrl: 'assets/images/user4.jpg',
      university: 'enetcom'),
  const User(
      name: 'Elizabeth Wong',
      imageUrl: 'assets/images/user3.jpg',
      university: 'enetcom'),
  const User(
      name: 'James Lathrop',
      imageUrl: 'assets/images/user2.jpg',
      university: 'enetcom'),
  const User(
      name: 'Jessie Samson',
      imageUrl: 'assets/images/user1.jpg',
      university: 'enetcom'),
  const User(
      name: 'David Brooks',
      imageUrl: 'assets/images/user10.jpg',
      university: 'enetcom'),
  const User(
      name: 'Jane Doe',
      imageUrl: 'assets/images/user9.jpg',
      university: 'enetcom'),
  const User(
      name: 'Matthew Hinkle',
      imageUrl: 'assets/images/user8.jpg',
      university: 'enetcom'),
  const User(
      name: 'Amy Smith',
      imageUrl: 'assets/images/user7.jpg',
      university: 'enetcom'),
  const User(
      name: 'Ed Morris',
      imageUrl: 'assets/images/user6.jpg',
      university: 'enetcom'),
  const User(
      name: 'Carolyn Duncan',
      imageUrl: 'assets/images/user5.jpg',
      university: 'enetcom'),
  const User(
      name: 'Paul Pinnock',
      imageUrl: 'assets/images/user4.jpg',
      university: 'enetcom'),
  const User(
      name: 'Elizabeth Wong',
      imageUrl: 'assets/images/user3.jpg',
      university: 'enetcom'),
  const User(
      name: 'James Lathrop',
      imageUrl: 'assets/images/user2.jpg',
      university: 'enetcom'),
  const User(
      name: 'Jessie Samson',
      imageUrl: 'assets/images/user1.jpg',
      university: 'enetcom'),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption:
        'Dear Microsoft members, much work is awaiting for you this year, WORK HARD.',
    timeAgo: '58m',
    imageUrl: 'assets/images/post1.jpg',
    interested: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[5],
    caption:
        'Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '3hr',
    imageUrl: '',
    interested: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption: 'This is a very good boi.',
    timeAgo: '8hr',
    imageUrl: 'assets/images/post2.jpg',
    interested: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Adventure ????',
    timeAgo: '15hr',
    imageUrl: 'assets/images/post3.jpg',
    interested: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    caption:
        'More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '1d',
    imageUrl: '',
    interested: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[9],
    caption: 'A classic.',
    timeAgo: '1d',
    imageUrl: 'assets/images/post4.jpg',
    interested: 1523,
    shares: 129,
    comments: 301,
  )
];
