import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Tasbeeh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // 1. متغير الحالة الجديد لحفظ اسم الذكر الأخير
  String _lastZikr = 'الله أكبر';

  // 2. تعديل الدالة لتقبل اسم الذكر (Zikr) كمدخل
  void _incrementCounter(String zikr) {
    setState(() {
      _counter++;
      _lastZikr = zikr; // تحديث اسم الذكر في كل ضغطة
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'سبحه الكترونيه',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF3366FF),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // 3. استخدام المتغير _lastZikr لعرض اسم الزر المضغوط
            Text(
              _lastZikr,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // 4. تعديل onPressed لتمرير القيمة
                ElevatedButton(
                  onPressed: () => _incrementCounter('سبحان الله'),
                  child: const Text('سبحان الله'),
                ),
                ElevatedButton(
                  onPressed: () => _incrementCounter('الحمد لله'),
                  child: const Text('الحمد لله'),
                ),
                ElevatedButton(
                  onPressed: () => _incrementCounter('الله أكبر'),
                  child: const Text('الله أكبر'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}