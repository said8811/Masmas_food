import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutters/models/postcomments.dart';
import 'package:flutters/models/postitems.dart';
import 'package:flutters/utils/styles.dart';

class Coments extends StatefulWidget {
  PostModel post;
  Coments({super.key, required this.post});

  @override
  State<Coments> createState() => _ComentsState();
}

List cmn = PostModel.past;
List cmn2 = cmn;

class _ComentsState extends State<Coments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onSubmitted: (value) {
                setState(() {
                  widget.post.comments
                      .add(PostComment(nickname: "user", comment: value));
                });
              },
              decoration: InputDecoration(hintText: "Add Comment"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  widget.post.comments[0].nickname,
                  style: MyStyles.robotoBold700,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(widget.post.comments[0].comment),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              child: ListView.builder(
                  itemCount: widget.post.comments.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Comentlar(index);
                  }),
            ),
          ],
        ),
      )),
    );
  }

  Widget Comentlar(int i) {
    return Row(
      children: [
        Text(
          widget.post.comments[i].nickname,
          style: MyStyles.robotoBold700,
        ),
        SizedBox(
          width: 10,
        ),
        Text(widget.post.comments[i].comment)
      ],
    );
  }

  Widget PostComments(PostModel posts) {
    return Container(
        child: Column(
      children: [buildComments(posts.comments)],
    ));
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
          comment.nickname,
          style: MyStyles.robotoBold700,
        ),
        SizedBox(width: 18),
        Text(comment.comment)
      ],
    );
  }
}
