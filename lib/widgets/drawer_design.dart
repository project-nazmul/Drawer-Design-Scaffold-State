import 'package:day17homework/design/icon_text_design.dart';
import 'package:day17homework/design/text_design.dart';
import 'package:flutter/material.dart';

class DrawerDesign extends StatelessWidget {
  const DrawerDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.3),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://a2q2p5g7.stackpathcdn.com/wp-content/uploads/2019/08/b71e16e182fc4f5f90fc352e98c766fc-17.jpg')
                      ),
                      color: Colors.red,
                      shape: BoxShape.circle
                    ),
                  ),
                  const TextDesign(fs: 15, fw: FontWeight.bold, text: 'Md Nazmul Khan'),
                  const TextDesign(fs: 12, fw: FontWeight.normal, text: 'project.nazmul@gmail.com'),
                  const SizedBox(height: 3,),
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: TextDesign(fs: 15, fw: FontWeight.normal, text: 'SIGN OUT'),
                    )
                  ),
                  const SizedBox(height: 15,),
                  const IconTextDesign(text: 'Add Leads', ic: Icons.edit,),
                  const IconTextDesign(text: 'Points Redemption', ic: Icons.star,),
                  const IconTextDesign(text: 'Points', ic: Icons.plus_one_outlined,),
                  const IconTextDesign(text: 'Profile', ic: Icons.person,),
                  const IconTextDesign(text: 'Dashboard', ic: Icons.space_dashboard_rounded,),
                  const IconTextDesign(text: 'Home', ic: Icons.home,),


                ],
              ),
            )
          ),
          Container(
            height: 1,
            color: Colors.white,
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextDesign(fs: 12, fw: FontWeight.normal, text: 'COMMUNICATE'),
                    IconTextDesign(text: 'Privacy Policy', ic: Icons.lock,),
                    IconTextDesign(text: 'Contact Us', ic: Icons.call,),
                    IconTextDesign(text: 'About App', ic: Icons.settings_outlined,),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
