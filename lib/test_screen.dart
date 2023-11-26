import 'package:flutter/material.dart';
import 'package:widget_extension/data_class.dart';
import 'package:widget_extension/wrapper_widget.dart';

class TestScreen extends StatelessWidget {
   const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              for (var off in data_class.OffsitList){
                print(off.dx);
              }
            }, child: Text('press to do')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WrapperWidget(  child: const Text('h')),
                WrapperWidget(   child: const Text('m')),
                WrapperWidget( child: Container(
                  color: Colors.blue,
                  width: 50,height: 20,))

              ],
            ),
          ],
        ),
      ),
    );
  }
}



