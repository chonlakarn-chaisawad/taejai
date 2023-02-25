import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taejai/models/project.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;
  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var durationInThai = project.durationInThai;
    var area = project.area;
    var duration = project.duration;
    var donateCount = project.donateCount;
    var formatter = NumberFormat('#,###,000');
    var receive = formatter.format(project.receiveAmount);
    var target = formatter.format(project.targetAmount);
    var percentText = ((project.receiveAmount / project.targetAmount) * 100)
        .toStringAsFixed(0);
    var percent = int.tryParse(percentText);

    return Scaffold(
      appBar: AppBar(
          title: Text(
        project.title,
        overflow: TextOverflow.ellipsis,
      )),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow[50],
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      project.title,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Image.asset(
                      project.imageUrl,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      project.detail,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'ระยะเวลาโครงการ : $durationInThai',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'พื้นที่ดำเนินโครงการ : $area',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 20,
                    ),
                    child: Text(
                      'ยอดบริจาคขณะนี้',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '$receive บาท',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5),
                    child: targetBar(target,percent,duration,donateCount),),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                            size: 15,
                          ),
                          Text(
                            '  ร่วมบริจาค',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_shopping_cart_outlined,
                            size: 15,
                          ),
                          Text(
                            '  หยิบใส่ตะกร้า',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 3,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
            color: Colors.grey[300],
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('แชร์ให้เพื่อน'),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                        child: Line(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                        child: Facebook(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                        child: Twitter(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget targetBar(target,percent,duration,donateCount){
  int p = percent;
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'เป้าหมาย',
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$target บาท',
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                '$percent%',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Expanded(
                flex: percent!,
                child: Container(
                  height: 10,
                  margin: const EdgeInsets.symmetric(
                      vertical: 5, horizontal: 0),
                  color: Colors.orangeAccent,
                ),
              ),
              Expanded(
                flex: 100 - p,
                child: Container(
                  height: 10,
                  margin: const EdgeInsets.symmetric(
                      vertical: 5, horizontal: 0),
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$duration วัน',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 14,
                    color: Colors.black45,
                  ),
                  Text(
                    '$donateCount',
                    style:
                    TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],

    ),
  );
}

Widget Line() {
  return IconButton(
    onPressed: () {},
    icon: FaIcon(FontAwesomeIcons.line),
    color: Colors.grey,
  );
}

Widget Facebook() {
  return IconButton(
    onPressed: () {},
    icon: FaIcon(FontAwesomeIcons.facebook),
    color: Colors.grey,
  );
}

Widget Twitter() {
  return IconButton(
    onPressed: () {},
    icon: FaIcon(FontAwesomeIcons.twitter),
    color: Colors.grey,
  );
}
