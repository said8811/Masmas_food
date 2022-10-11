import 'package:flutters/models/postcomments.dart';

class PostModel {
  String userimage;
  String nickname;
  List img;
  bool isLiked;
  bool isMarked;
  int currentpage = 0;
  List<PostComment> comments;
  PostModel(
      {required this.img,
      required this.userimage,
      required this.nickname,
      required this.isLiked,
      required this.isMarked,
      required this.comments});

  static List past = [
    PostModel(
        userimage: 'assets/images/story1.png',
        nickname: 'Raffle',
        img: [
          "assets/images/page1.png",
          "assets/images/story2.png",
          "assets/images/story3.png",
          "assets/images/story4.png",
        ],
        isLiked: false,
        isMarked: false,
        comments: [PostComment(comment: "lala", nickname: "john")]),
    PostModel(
        userimage: 'assets/images/story1.png',
        nickname: 'fluffy',
        img: [
          "assets/images/page1.png",
          "assets/images/story2.png",
          "assets/images/story3.png",
          "assets/images/story4.png",
        ],
        isLiked: false,
        isMarked: false,
        comments: [PostComment(nickname: "kk", comment: "comment")]),
    PostModel(
        userimage: 'assets/images/story1.png',
        nickname: 'Said',
        img: [
          "assets/images/page1.png",
          "assets/images/story2.png",
          "assets/images/story3.png",
          "assets/images/story4.png",
        ],
        isLiked: false,
        isMarked: false,
        comments: [PostComment(nickname: "salom", comment: "coment3")])
  ];
}
