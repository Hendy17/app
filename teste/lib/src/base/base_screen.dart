import 'package:flutter/material.dart';
import 'package:teste/src/home/app_ag_cond.dart';
import 'package:teste/src/home/app_ag_pilates.dart';
import 'package:teste/src/home/app_tab.dart'; // Importe o arquivo que contém HomeTab

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(), 
        children: const [
          HomeTab(), 
          AppAgCond(),
          AppAgPilates(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey[600],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda_outlined),
            label: 'Ag Condicionamento',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda_outlined),
            label: 'Ag Pilates',
          ),
          // Adicione mais BottomNavigationBarItems conforme necessário
        ],
      ),
    );
  }
}
