import 'package:flutter/material.dart';
import 'package:whatsapp/models/call.dart';
import 'package:whatsapp/tema.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index){
        final call = callList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle_outlined,
            size: 50,
            color: Colors.black,
          ),
          title: Text(
            call.name,
            style: customTextStyle,
          ),
          subtitle: Text(
            call.callDate,
          ),
          trailing: const Icon(
            Icons.call,
            color: Colors.green,
          ),
        );
      });
  }
}