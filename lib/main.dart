import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LayoutRulesExample(),
  ));
}




class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiga Aturan Layout Flutter'),
      ),
      body: const MyPages1(),
   );
 }
}

class MyPages1 extends StatelessWidget {
  const MyPages1({super.key});

  @override
  Widget build(BuildContext context) { 
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text (
              '1 & 2 Aturan Constraints (Batas) dan sixe (Ukuran)',
               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('induk memaksa anak pada batas tertentu, anak memaksa induk pada ukuran tertentu.'),
            const SizedBox(height: 10),
            //contoh aturan 1&2
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100,
                minHeight: 200,
                maxWidth: 100,
                maxHeight: 200,
              ),
              //anak anak mencoba menentukan ukuran lebih besar dari si induk hasilnya gagal
              child: Container(
                width: 500,
                height: 50,
                color: Colors.blue,
                  child: const Text(
                    'Saya minta 500x50, tapi dapatnya 200x100',
                    style: TextStyle(color: Colors.white),

              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}




