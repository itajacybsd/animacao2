// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ExpandedCard extends StatefulWidget {
  bool isOpen;
  String title;
  String text;


  ExpandedCard({
    super.key,
    required this.isOpen,
    required this.title,
    required this.text,
  });

  @override
  State<ExpandedCard> createState() => _ExpandedCardState();
}

class _ExpandedCardState extends State<ExpandedCard> {

   @override
   Widget build(BuildContext context) {
       return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.isOpen = !widget.isOpen;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 18,
                      color: widget.isOpen ? Colors.blue : Colors.black,
                    ),
                  ),
                ),
                AnimatedRotation(
                  turns: widget.isOpen ? 0 : 0.5,
                  duration: Duration(seconds: 1),
                  child: Icon(
                    size: 32.0,
                    Icons.arrow_drop_down,
                    color: widget.isOpen ? Colors.blue : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        ExpansionTile(title: Text('teste')),
        ClipRect(
          child: AnimatedAlign(
            alignment: Alignment.center,
            duration: Duration(seconds: 1),
            heightFactor: widget.isOpen ? 1 : 0,
            child: Container(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.isOpen = !widget.isOpen;
                  });
                },
                child: Text(
                  widget.text, // sem condição
                  // widget.isOpen ? widget.text : '', // com condição
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        
      ],
    );
  }
}