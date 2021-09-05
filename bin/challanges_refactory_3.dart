import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  fibonacci();
  // palindrome();
  // capitalize();
  randomString();
  print(mboh("HALLO....!!!!"));
}

void fibonacci() {
  int n1 = 0, n2 = 1, n3;
  print(n1);
  print(n2);

  for (int i = 2; i <= 10; i++) {
    n3 = n1 + n2;
    stdout.write('$n3, ');
    n1 = n2;
    n2 = n3;
  }
}

// void palindrome() {
//   print('Masukkan angka atau kata');
//   String original = stdin.readLineSync();

//   String reverse = original.split('').reversed.join('');

//   if (original == reverse) {
//     print('Merupakan Palindrome');
//   } else {
//     print('Bukan Merupakan Palindrome');
//   }
// }

// String konvertHuruf(String text) {
//   if (text == null) {
//     return null;
//   }

//   if (text.length <= 1) {
//     return text.toUpperCase();
//   }

//   final List<String> kata = text.split(' ');

//   final kapitalHurufPertama = kata.map((word) {
//     if (word.trim().isNotEmpty) {
//       final String hurufPertama = word.trim().substring(0, 1).toUpperCase();
//       final String hurufSetelahnya = word.trim().substring(1);

//       return '$hurufPertama$hurufSetelahnya';
//     }
//     return '';
//   });
//   return kapitalHurufPertama.join(' ');
// }

// void capitalize() {
//   print("Kapital Setiap Awal Kata");
//   print("------------!---------------");
//   String test = 'aku sayang kamu selalu';

//   print(konvertHuruf(test));
// }

String getRandomString(int number) {
  var r = Random();
  const _chars = 'NAJJNCJNAJJnjnfsanjkasndus23213812389AMKNA';
  return List.generate(number, (index) => _chars[r.nextInt(_chars.length)])
      .join();
}

void randomString() {
  print(getRandomString(10));
}

String mboh(String kalimat) => kalimat;
