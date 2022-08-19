
import 'package:flutter/material.dart';

class BottomNavigationHome extends StatelessWidget {
  const BottomNavigationHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.drag_handle_sharp),
          label: "Extrato",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money),
          label: "Cadastrar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.stacked_bar_chart_outlined),
          label: "Resumo",
        ),
      ],
    );
  }
}