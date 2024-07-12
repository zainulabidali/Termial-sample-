import 'dart:io';

void main() {
  stdout.write("write your command");
  while (true) {
    String cmd = stdin.readLineSync()!;

    switch (cmd) {
      case "ls":
        ls();
        break;
      case "pwd":
        pwd();
        break;
      case "touch":
        touch();
        break;
      case "rm":
        rm();
        break;
      default:
        stdout.write('invvalid input');
    }
  }
}

void ls() {
  final cmd = new Directory("./");
  cmd.listSync().forEach((e) {
    print(e);
  });
}

void pwd() {
  print(Directory.current.path);
}

void touch() {
  print("enter the name file");
  String filename = stdin.readLineSync()!;
  File file = File(filename);
  file.createSync();
}
void rm(){
  
}
