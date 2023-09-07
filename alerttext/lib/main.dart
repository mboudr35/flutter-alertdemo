import 'package:flutter/material.dart';
import 'dart:io';

/// Flutter code sample for [AlertDialog].

void main() => runApp(const AlertDialogExampleApp());

class AlertDialogExampleApp extends StatelessWidget {
  const AlertDialogExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
	  elevation: 0,
	  titlePadding: const EdgeInsets.only(
	    left: 56,
	    right: 56,
	    top: 58,
	    bottom: 54,
	  ),
	  contentPadding: const EdgeInsets.only(
	    left: 56,
	    right: 0,
	    top: 0,
	    bottom: 0,
	  ),
          title: Text('OH BOY I hope this works!'),
          content: SizedBox(
            width: double.maxFinite,
            child: Column(
	      mainAxisAlignment: MainAxisAlignment.start,
	      crossAxisAlignment: CrossAxisAlignment.start,
	      mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text('This is some text, cool!'),
		Text('This is more text, even cooler!'),
		Text('This is the best text, coolest!'),
                TextFormField(
                  obscureText: true,
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your SECRET message',
                  ),
                  onFieldSubmitted: ((val) {
                    stderr.writeln(val);
                  }),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
