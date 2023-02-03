import 'package:store_app/models/user_model.dart';

class Target {
  final String? title;
  final String? imageUrl;

  Target({
    this.title,
    this.imageUrl
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
);
final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'assets/images/john.jpg',
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.jpg',
);
final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'assets/images/sam.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'assets/images/steven.jpg',
);


List<Target> targets = [
  Target (
    title: "Dropbox",
    imageUrl: 'assets/icons/dropbox.png',
  ),
  Target (
    title: "Google Drive",
    imageUrl: 'assets/icons/drive.png',
  ),
];


class File {
  final String? title;
  final String? imageUrl;

  File({this.title,this.imageUrl});
}

List<File> files = [
  File(
    title: "Word",
    imageUrl: "assets/icon/word.png",
  ),
  File(
    title: "pdf",
    imageUrl: "assets/icon/pdf.png",
  ) 
];