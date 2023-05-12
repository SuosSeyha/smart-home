import 'package:flutter/material.dart';
class ItemWidget extends StatelessWidget {
  String image,temprature,title;
  ItemWidget({
    super.key,
    required this.image,
    required this.temprature,
    required this.title
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 160,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        //left: 10,
        top: 8
      ),
      //color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration:  BoxDecoration(
              //color: Colors.amber,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  image
                )
              )
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const SizedBox(
                height: 5,
              ),
                Text(
            temprature,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white
            ),
          ),
            Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white
            ),
          )
            ],
          )
        ],
      ),
    );
  }
}