import 'package:flutter/material.dart';
import 'package:flutter_codigo5_sqflite_qr/pages/home_page.dart';
import 'package:flutter_codigo5_sqflite_qr/ui/general/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Tu carnet de vacunación",
              style: TextStyle(
                  fontSize: 46.0,
                  height: 1,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff2A2B30)),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Text(
              "Con esta App podrás gestionar los carnets de las personas que más prefieras. No olvides ser responsable",
              style: TextStyle(
                  fontSize: 16.0,
                  height: 1.4,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2A2B30)),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                 // Navigator.push(context, route)
                },
                child: Text("Iniciar ahora",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
