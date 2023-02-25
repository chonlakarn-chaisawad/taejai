import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';

import 'project_details_page.dart';

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
      title: 'อิ่มท้องน้องพิเศษ',
      description:
          'ชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คนในมูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ',
      targetAmount: 119350,
      duration: 22,
      receiveAmount: 10000,
      donateCount: 13,
      //imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYzMP39AfMxD1G3gYyZvjzp_G2-FpnBkZ1HA&usqp=CAU',
      //imageUrl: 'https://taejai.com/media/projects/107925950557865513466971890391231979223.jpg.370x220_q85_crop_upscale.jpg',
      imageUrl: 'assets/images/project01.jpg',
      durationInThai: '06 ก.พ. 2566 ถึง 06 มี.ค. 2566',
      area: 'ตำบลพลูตาหลวง อำเภอสัตหีบ จังหวัดชลบุรี (มูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ)',
      detail: 'ชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คนในมูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ ที่ต้องเผชิญค่าใช้จ่ายด้านอาหารกลางวันหลักแสนต่อเดือน เงินจำนวน 3,500 บาทสามารถเลี้ยงอาหารทุกคนได้ 1 มื้อ',
    ),
    Project(
      title: 'I’m ABLE “โอกาสจากพี่ ช่วยหนูได้เรียนร่วม”',
      description:
          'ระดมทุนการศึกษา 1 ปีให้กับเด็กนักเรียนพิการจำนวน 150 คนๆ ละ 4,000 บาท',
      targetAmount: 825000,
      duration: 138,
      receiveAmount: 400000,
      donateCount: 8,
      //imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQZfy8gt-nh424rLiL8S2t9tKfQgf5O0RvFw&usqp=CAU',
      //imageUrl: 'https://taejai.com/media/projects/812422079152226849116407168962028045523.jpg.370x220_q85_crop_upscale.jpg',
      imageUrl: 'assets/images/project02.jpg',
      durationInThai: '01 ก.พ. 2566 ถึง 30 มิ.ย. 2566',
      area: 'ภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ของประเทศไทย',
      detail: 'ระดมทุนการศึกษา 1 ปีให้กับเด็กนักเรียนพิการจำนวน 150 คนๆ ละ 4,000 บาท ให้กับเด็กนักเรียนพิการที่กำลังศึกษาอยู่ในระดับชั้นประถมศึกษาถึงมัธยมศึกษาในจังหวัดต่างๆของภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ที่มีความพิการทางร่างกายหรือพัฒนาการช้าแต่สามารถสื่อสารและเรียนหนังสือได้ เพื่อส่งเสริมเด็กนักเรียนพิการเหล่านั้นได้เรียนร่วมในโรงเรียนปกติกับนักเรียนทั่วไป เสริมสร้างพัฒนาการทางร่างกาย สติปัญญา ส่งเสริมการเรียนรู้การเข้าสังคมและช่วยเหลือตนเองในสถานการณ์ต่างๆโดยไม่รู้สึกว่าตนเองเป็นภาระของครูและเพื่อนๆในโรงเรียน',

    ),
    Project(
      title: 'พาพญาแร้งที่สูญพันธุ์จากธรรมชาติกลับคืนป่าเมืองไทย',
      description:
          'ในวันนี้พวกเราพยายามวางแผนเพาะพันธุ์พญาแร้งที่เหลืออยู่ในกรงเลี้ยงจำนวน 6 ตัว',
      targetAmount: 299200,
      duration: 322,
      receiveAmount: 200000,
      donateCount: 28,
      //imageUrl: 'data:image/jpeg;base64,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',
      //imageUrl: 'https://taejai.com/media/projects/817992739008557916615892336662736056431.jpg.370x220_q85_crop_upscale.jpg',
      imageUrl: 'assets/images/project03.jpg',
      durationInThai: '01 ก.พ. 2566 ถึง 31 ม.ค. 2567',
      area: 'ตำบลลานสัก อำเภอลานสัก จังหวัดอุทัยธานี (เขตรักษาพันธุ์สัตว์ป่าห้วยขาแข้งและพื้นที่โดยรอบ), ตำบลไชยมงคล อำเภอเมืองนครราชสีมา จังหวัดนครราชสีมา (สวนสัตว์นครราชสีมา)',
      detail: 'เกือบ 30 ปี ที่พญาแร้งหายไปจากป่าเมืองไทย ในวันนี้พวกเราพยายามวางแผนเพาะพันธุ์พญาแร้งที่เหลืออยู่ในกรงเลี้ยงจำนวน 6 ตัว เพื่อหวังว่าสักวันในผืนป่าประเทศไทยจะมีพญาแร้งโผบินอีกครั้งแต่โจทย์นี้ไม่ง่าย เพราะการจะทำให้สัตว์ที่สูญพันธุ์จากธรรมชาติกลับคืนมา ยากกว่าการทำให้มันหายไป',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เทใจ'),
      ),
      body: ListView.builder(
        itemCount: projects.length,
        //callback function
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index];
          var descriptionStyle =
              const TextStyle(fontSize: 12, color: Colors.black54);
          var amountStyle = const TextStyle(
              fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold);
          var formatter = NumberFormat('#,###,000');
          var target = formatter.format(project.targetAmount);
          var percentText =
              ((project.receiveAmount / project.targetAmount) * 100)
                  .toStringAsFixed(0);
          var percent = int.tryParse(percentText);
          return Card(
            child: InkWell(
              onTap: (){
                _handleClickProjectItem(projects[index]);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          project.imageUrl,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        // Container(
                        //   width: 60,
                        //   height: 60,
                        //   color: Colors.pink,
                        // ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(project.title),
                            const SizedBox(height: 8),
                            Text(project.description, style: descriptionStyle),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('เป้าหมาย', style: descriptionStyle),
                            Text('$target บาท', style: amountStyle),
                          ],
                        ),
                        Text('$percentText%', style: descriptionStyle),
                      ],
                    ),
                    Row(
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
                          flex: 100 - percent,
                          child: Container(
                            height: 10,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('${project.duration} วัน',
                            style: descriptionStyle),
                        Row(
                          children: [
                            const Icon(
                              Icons.person_outlined,
                              size: 14,
                              color: Colors.black45,
                            ),
                            Text('${project.donateCount}',
                                style: descriptionStyle),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleClickProjectItem(Project p) {
    print(p.title);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetailsPage(project:p,)),
    );
  }


}
