import 'package:feed_post/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ItemWidget extends StatefulWidget {
  final Model model;


  ItemWidget({required this.model});

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    child: ClipOval(
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/user_placeholder.png',
                        image: widget.model.displayPicture,
                        fit: BoxFit.cover,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.model.name,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.model.location,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          //SizedBox(height: 10,),
          FadeInImage.assetNetwork(
          placeholder: 'assets/images/post_placeholder.png',
          image: widget.model.picture,
          fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      widget.model.isLiked ? widget.model.isLiked = false : widget.model.isLiked = true;
                    });
                  },
                  child: widget.model.isLiked ? Icon(Icons.thumb_up) : Icon(Icons.thumb_up_alt_outlined),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(widget.model.isLiked ? "${widget.model.like+1}" : "${widget.model.like}"),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.mode_comment_outlined),
                SizedBox(
                  width: 10,
                ),
                Text("${widget.model.comment}"),
                Expanded(child: SizedBox(width: 10,)),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      widget.model.isSave ? widget.model.isSave = false : widget.model.isSave = true;
                    });
                  },
                  child: widget.model.isSave ? Icon(Icons.bookmark) : Icon(Icons.bookmark_border_rounded),
                ),

              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: ReadMoreText(
                "${widget.model.description}",
                trimLines: 2,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.black87),
                lessStyle: Theme.of(context).textTheme.caption?.copyWith(color: Colors.black87, fontWeight: FontWeight.bold),
                moreStyle: Theme.of(context).textTheme.caption?.copyWith(color: Colors.black87, fontWeight: FontWeight.bold),
              ),
          ),
        ],
      ),
    );
  }
}
