import 'package:flutter/material.dart';
import 'package:whatsapp/models/status.dart';
import 'package:whatsapp/tema.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index){
        final status = statusList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle_outlined,
            size: 50,
            color: Colors.purpleAccent,
          ),
          title: Text(
            status.name,
            style: customTextStyle,
          ),
          subtitle: Text(status.callDate),
        );
      });
  }
}