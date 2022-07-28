import 'package:day17homework/widgets/drawer_design.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerDesign(),
      key: _key,
      body: InkWell(
        onTap: (){
          _key.currentState!.openDrawer();
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://media.istockphoto.com/photos/defocused-lights-on-black-background-picture-id1043785660?k=20&m=1043785660&s=170667a&w=0&h=n_SqC0Jv2tWqgt0T4FglemmrCV4byt0B51jlrI8qXpY="))
          ),
        ),
      ),
    );
  }
}
