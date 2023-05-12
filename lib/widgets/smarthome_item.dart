import 'package:flutter/material.dart';
class SmartHomeItem extends StatelessWidget {
  var data1;
   SmartHomeItem({
    required this.data1,
    super.key});
  bool _isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(
              20
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    data1.icon,
                    color: Colors.white.withOpacity(0.5),
                    size: 50,
                  ),
                  Switch(
                    thumbColor: MaterialStateProperty.all(Colors.green),
                    trackColor: MaterialStateProperty.all(Colors.black.withOpacity(0.5)),
                    value: _isSelected, 
                    onChanged: (value) {
                      _isSelected=!_isSelected;
                    },
                  )
                ],
              ),
              Container(
                //alignment: Alignment.center,
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                      Text(
                      data1.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data1.brand,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.3)
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
  }
}