import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;
  const Answer({Key? key, required this.selectHandler, required this.answerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        padding: EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15)))
        ),
      ),
    );
  }
}
