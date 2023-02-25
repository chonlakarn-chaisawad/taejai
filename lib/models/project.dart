class Project {
  final String title; //ชื่อโครงการ
  final String description; //รายละเอียดโครงการแบบย่อ
  final int targetAmount; //ยอดเงินที่ต้องการ
  final int duration; //ระยะเวลาโครงการ
  final int receiveAmount;//เงินที่ได้รับบริจาคมาแล้ว
  final int donateCount;//จำนวนครั้งที่มีการบริจาคเข้ามา
  final String imageUrl;//ภาพ
  final String durationInThai;//ระยะเวลาโครงการ
  final String area;//พื้นที่ดำเนินโครงการ
  final String detail;//รายละเอียดโครงการหน้า detail_page

  Project({
    required this.title,
    required this.description,
    required this.targetAmount,
    required this.duration,
    required this.receiveAmount,
    required this.donateCount,
    required this.imageUrl,
    required this.durationInThai,
    required this.area,
    required this.detail,
  });
}
