class Employees {
  Employees({
    this.id,
    required this.name,
    required this.doj,
    required this.desc,
  });
  final String? id;
  final String name;
  final String desc;
  final String doj;

  factory Employees.fromJson(Map<String, dynamic> data) {
    final name = data['name'];
    final doj = data['doj'];
    final desc = data['desc'];
    return Employees(name: name, doj: doj, desc: desc);
  }
}
