import 'package:flutter/material.dart';
import 'package:practice/water_consume.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WaterConsume> waterConsumeList=[];

  final TextEditingController _noOfGlassesTEcontroller= TextEditingController(text: '1');
  final TextEditingController _noteOfGlassesTEcontroller= TextEditingController(text: 'Morning');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Tracker'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: (){
                     if( _noOfGlassesTEcontroller.text.trim().isEmpty){
                       _noOfGlassesTEcontroller.text='1';
                     }
                      final noOfGlasses =_noOfGlassesTEcontroller.text.trim();
                     int value =int.tryParse(noOfGlasses) ?? 1;
                     waterConsumeList.add(
                        WaterConsume(value, DateTime.now(),
                            _noteOfGlassesTEcontroller.text),
                      );
                      setState(() {

                      });

                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(color: Colors.deepOrange,width: 4,),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: const Text('Tap tp Add',style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                        child: TextField(
                          controller: _noOfGlassesTEcontroller,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(width: 16,),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          controller: _noteOfGlassesTEcontroller,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
           ListView.builder(
                // reverse: true,
                   itemCount: waterConsumeList.length,
                   shrinkWrap: true,
                   primary: false,
                   itemBuilder: (context, index){
                     return ListTile(
                       leading: CircleAvatar(
                         child: Text(waterConsumeList[index].noOfGlass.toString()),
                       ),
                       title: Text(waterConsumeList[index].note),
                       subtitle: Text('Time ${DateFormat.yMMMMEEEEd().format(waterConsumeList[index].time)}'),
                       trailing: IconButton(
                         icon: const Icon(Icons.delete_outline),
                         onPressed: (){
                           waterConsumeList.removeAt(index);
                           setState(() {

                           });
                         },
                       ),
                     );
               }),
    

          ],
        ),
      ),
    );
  }
}
