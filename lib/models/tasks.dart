class task {
  String name = '';
  bool isdone = false;
  task({required this.name, this.isdone = false});
  void toggledone() {
    isdone = !isdone;
  }
}
