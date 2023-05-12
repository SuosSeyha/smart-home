

import 'package:flutter/material.dart';
import 'package:smart_home/model/smarthome_model.dart';

import '../widgets/items.dart';
import '../widgets/smarthome_item.dart';
class SmartHome extends StatefulWidget {
  const SmartHome({super.key});

  @override
  State<SmartHome> createState() => _SmartHomeState();
}

class _SmartHomeState extends State<SmartHome> {
  List<String> categories=[
    'All',
    'Living Room',
    'Kitchen',
    'Bathroom'
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color.fromARGB(255, 50, 50, 50),
      appBar: AppBar(
        leading: const Icon(
          Icons.view_cozy
        ),
        backgroundColor:const  Color.fromARGB(255, 50, 50, 50),
        title: const Text(
          'Smart Home'
        ),
        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundColor:  Color.fromARGB(255, 118, 228, 121),
            child: CircleAvatar(
              radius: 19,
              backgroundImage: AssetImage(
                'assets/images/virak.jpg'
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    categories.length, (index){
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          //horizontal: 10,
                          vertical: 5
                        ),
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  currentIndex=index;
                                });
                              }, 
                              child: Text(
                                categories[index],
                                style:  TextStyle(
                                  fontSize: 18,
                                  color: currentIndex==index?Colors.white:Colors.grey.withOpacity(0.5)
                                ),
                              )),
                              Container(
                              height: 5,
                              width: currentIndex==index?100:0,
                              decoration: BoxDecoration(
                                color:const  Color.fromARGB(255, 118, 228, 121),
                                borderRadius: BorderRadius.circular(
                                  10,
                                )
                              ),
                            )
                          ],
                        ),
                      );
                    }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    top: 10
                  ),
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(
                      30
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          ItemWidget(
                            image: 'assets/images/thermometer.png',
                            temprature: '26 C',
                            title: 'Temprature',
                          ),
                          ItemWidget(
                            image: 'assets/images/humidity.png',
                            temprature: '35 C',
                            title: 'Humidity',
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ItemWidget(
                            image: 'assets/images/energy-saving.png',
                            temprature: '256 K',
                            title: 'Energy Usage',
                          ),
                          ItemWidget(
                            image: 'assets/images/lightbulb.png',
                            temprature: '50%',
                            title: 'Light intensity',
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                  shrinkWrap: true, 
                  children: List.generate( 
                    HomeModel.listHome.length, (index){
                      var data = HomeModel.listHome[index];
                      return SmartHomeItem(
                        data1: data,
                      );
                    }),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}