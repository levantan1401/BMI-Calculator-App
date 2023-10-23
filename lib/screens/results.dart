import 'package:flutter/material.dart';
import 'package:lab7_bmi_app/components/bottom_button.dart';
import 'package:lab7_bmi_app/components/reuable_card.dart';

class Results extends StatelessWidget {
  String? resultText;
  String? bmi;
  String? advise;
  Color? textColor;

  Results(
      {required this.textColor,
      required this.resultText,
      required this.bmi,
      required this.advise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmi!,
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Normal BMI range:',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Text(
                    '18.5 - 25 kg/m2',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    advise!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    constraints: BoxConstraints.tightFor(
                      width: 200.0,
                      height: 56.0,
                    ),
                    fillColor: Color(0xFF4C4F5E),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'SAVE RESULT',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
