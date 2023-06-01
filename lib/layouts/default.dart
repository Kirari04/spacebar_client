import 'package:flutter/material.dart';
import 'package:spacebar_client/components/navigation.dart';
import 'package:spacebar_client/data/auth.dart';
import 'package:spacebar_client/models/login.dart';

class DefaultLayout extends StatefulWidget {
  const DefaultLayout({super.key});

  @override
  State<DefaultLayout> createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
  LoginRes? loginSession;

  @override
  void initState() {
    super.initState();
    AuthData.getSession().then((session) {
      setState(() {
        loginSession = session;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColorLight,
        child: Flex(
          direction: Axis.horizontal,
          clipBehavior: Clip.hardEdge,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Navigation(),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.red,
                child: Text("${loginSession?.token}"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
