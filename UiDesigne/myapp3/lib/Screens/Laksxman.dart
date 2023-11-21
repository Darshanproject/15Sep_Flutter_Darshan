import 'dart:math';

import 'package:flutter/material.dart';

class guess_game extends StatefulWidget {
  const guess_game({super.key});

  @override
  State<guess_game> createState() => _guess_gameState();
}

class _guess_gameState extends State<guess_game> {
  TextEditingController Entered_number = TextEditingController();
  String Hint = "I Guessed a number Between 1 and 100, Guess that number !";
  int submit_counter = 0;
  var guessed_num;

  void set_random_number() {
    final random = Random();
    int min = 1;
    int max = 100;
    guessed_num = min + random.nextInt(max);
  }

  void submit_btn_process() {
    setState(() {
      submit_counter++;
      if (int.parse(Entered_number.text.toString()) > guessed_num) {
        Hint = "Wrong ! Hint : Try Lower";
      } else if (int.parse(Entered_number.text.toString()) < guessed_num) {
        Hint = "Wrong ! Hint : Try Higher";
      } else {
        Hint =
            "Congratulations ! You Guessed correct in $submit_counter Attempts";
        submit_counter = 0;
      }
    });
  }

  void reset_btn_process() {
    setState(() {
      submit_counter = 0;
      Hint = "I Guessed a number Between 1 and 100, Guess that number !";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guessing Game"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Hint),
              SizedBox(
                height: 20,
              ),
              TextField(
                  controller:
                      Entered_number, // take a controller for entered text
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.gamepad),
                    labelText: "Enter number",
                    hintText: "Between 1 and 100",
                    contentPadding: EdgeInsets.all(10),
                  )),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: submit_btn_process,
                  child: Text("Submit")), // Submit Button
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  onPressed: reset_btn_process,
                  child: Text("Give up !\nGuess a new number")) // Reset Button
            ],
          ),
        ),
     ),
);
}
}