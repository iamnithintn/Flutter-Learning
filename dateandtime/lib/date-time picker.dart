import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class LearningDateAndTimePicker extends StatelessWidget {
  const LearningDateAndTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Formatting Date and Time"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Select Date",
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(onPressed: () async {
                DateTime? datepicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2024));

                if(datepicked!=null){
                  print("Date Selected : ${DateFormat('jms').format(datepicked)}");
                }

              }, child: const Text("Date"),),

              const SizedBox(height: 50,),

               const Text(
                "Select Time",
                style: TextStyle(fontSize: 30),
              ),

              ElevatedButton(onPressed: () async {
                var timePicked =  await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.dial
                );


                if(timePicked!=null){
                  print("Time Selected : ${timePicked.hour} hours : ${timePicked.minute} minutes");
                }

              }, child: const Text("Time"),),
            ],
          ),
        )
    );
  }
}
