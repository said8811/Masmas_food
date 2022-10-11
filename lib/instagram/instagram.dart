import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/instagram/Commen.dart';
import 'package:flutters/instagram/coments.dart';
import 'package:flutters/job-search/signup.dart';
import 'package:flutters/models/postcomments.dart';
import 'package:flutters/models/postitems.dart';
import 'package:flutters/utils/styles.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

int selectedindex = 0;
bool isLiked = false;
int i = 1;

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: 2020,
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/instagram.png'),
                          width: 104,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/plus.png',
                              width: 24,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/images/like.png',
                              width: 24,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/images/msg.png',
                              width: 24,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stories('assets/images/story1.png', 'Your story'),
                        const SizedBox(
                          width: 15,
                        ),
                        Stories('assets/images/story2.png', 'HypeSun_98'),
                        const SizedBox(
                          width: 15,
                        ),
                        Stories('assets/images/story3.png', 'KArolboy'),
                        const SizedBox(
                          width: 15,
                        ),
                        Stories('assets/images/story4.png', 'Wagless'),
                        const SizedBox(
                          width: 15,
                        ),
                        Stories('assets/images/story4.png', 'johnny'),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1790,
                    child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: PostModel.past.length,
                        itemBuilder: (BuildContext context, int index) {
                          return PostItems(PostModel.past[index]);
                        }),
                  ),
                ],
              )),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          currentIndex: selectedindex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: '',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Container(
                    width: 24,
                    height: 24,
                    child: Image(
                      image: AssetImage('assets/images/story1.png'),
                    )),
                label: ''),
          ]),
    );
  }

  Widget Posts(PostModel postModel) {
    return Container(
      child: ListView.builder(itemBuilder: (BuildContext context, int i) {
        return PostItems(PostModel.past[i]);
      }),
    );
  }

  Widget PostItems(PostModel posts) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage(posts.userimage),
                    width: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    posts.nickname,
                    style: MyStyles.robotoBold700,
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
        Container(
          height: 300,
          child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  posts.currentpage = value;
                });
              },
              itemCount: posts.img.length,
              itemBuilder: (BuildContext context, int index) {
                return PostImage(posts.img[index], posts.currentpage);
              }),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          posts.isLiked = !posts.isLiked;
                        });
                      },
                      child: posts.isLiked
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : Icon(Icons.favorite_border_outlined)),
                  SizedBox(
                    width: 5,
                  ),
                  Image(
                    image: AssetImage('assets/images/send.png'),
                    width: 24,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Comments(
                                      post: posts,
                                      index: i,
                                    )));
                      });
                    },
                    child: Image(
                      image: AssetImage('assets/images/massage2.png'),
                      width: 24,
                    ),
                  )
                ],
              ),
              Center(
                child: Row(
                  children: indicators(posts.img.length, posts.currentpage),
                ),
              ),
              SizedBox(
                width: 1,
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/admit.png'),
                    width: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "100 likes",
            style: MyStyles.robotoBold700.copyWith(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "user",
                style: MyStyles.robotoBold700,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Sed sed semper enim. "),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 40,
            child: TextField(
              onSubmitted: (value) {
                setState(() {
                  i = i + 1;
                  posts.comments
                      .add(PostComment(nickname: "User2", comment: value));
                });
              },
              decoration: InputDecoration(hintText: "Add comment"),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }

  Widget buildComments(List<PostComment> comments) {
    return Container(
      height: 60,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return buildCommentItem(comments[index]);
        },
        itemCount: comments.length,
      ),
    );
  }

  Widget buildCommentItem(PostComment comment) {
    return Row(
      children: [
        Text(
          "User",
          style: MyStyles.robotoBold700,
        ),
        SizedBox(width: 18),
        Text(comment.comment)
      ],
    );
  }
}

Widget Stories(String img, String txt) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(3),
        width: 68,
        height: 68,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient:
                LinearGradient(colors: [Color(0xFFDE0046), Color(0xFFF7A34B)])),
        child: Stack(children: [
          Container(
            padding: EdgeInsets.all(3),
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover))),
          ),
        ]),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(txt)
    ],
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.blue : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}

Widget PostImage(String image, int currentPage) {
  return Container(
    width: double.infinity,
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}
