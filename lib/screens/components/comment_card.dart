import 'package:bgb/models/call_comment.dart';
import 'package:flutter/cupertino.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({Key? key, required this.comment}) : super(key: key);

  final CallComment comment;

  @override
  Widget build(BuildContext context) {
    return Text(
        '[${comment.commentTimeStamp}] - ${comment.owner}: ${comment.comment}');
  }
}
