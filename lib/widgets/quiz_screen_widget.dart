// ignore_for_file: must_be_immutable, prefer_const_constructors, unnecessary_this, unused_import, avoid_print

import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_model.dart';

class QuizScreenWidget extends StatelessWidget {
  QuizScreenWidget(
      {super.key,
      this.questionNumber,
      this.question,
      this.answersList,
      this.controllerNumber});

  final dynamic questionNumber;
  final dynamic question;
  dynamic answersList;
  dynamic controllerNumber;
  var dropMenuController = TextEditingController();
  late List<DropdownMenuEntry<dynamic>> itemsList = answersList;
  double result = 0;
  // static var controllerNumber = DropMenuWidget.dropMenuController.text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 15, offset: Offset(2, 2)),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange,
                    // minRadius: 30,
                    child: Text(
                      this.questionNumber,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      this.question,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DropdownButtonHideUnderline(
                        child: DropdownMenu(
                      controller: dropMenuController,
                      width: 200,
                      hintText: 'Choose an answer',
                      dropdownMenuEntries: answersList,
                      onSelected: (value) {
                        value = dropMenuController.text;
                        currentAnswers[controllerNumber] = value;

                        print(currentAnswers);
                        print(value);
                        print(dropMenuController.text);
                        // print(result);
                      },
                    )),
                    // DropMenuWidget(
                    //   itemsList: answersList,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
