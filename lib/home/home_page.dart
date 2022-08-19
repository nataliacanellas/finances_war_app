import 'package:flutter/material.dart';

import 'widgets/bottom_navigation_home.dart';
import 'widgets/container_card_extrato.dart';
import 'widgets/container_initial_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 52, 105),
        title: const Text('Olá, Naty'),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      bottomNavigationBar: const BottomNavigationHome(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ContainerInitialCard(),
            const SizedBox(height: 15),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Extrato',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            ContainerCardExtrato(
              title: 'Desenvolvimento de app',
              value: 'R\$ 5.790,00',
              category: 'Salário',
              date: '01/07/2022',
              iconData: Icons.attach_money,
              colorValue: Colors.green,
            ),
            ContainerCardExtrato(
              title: 'Imobiliária',
              value: '- R\$ 1500,00',
              category: 'Aluguel',
              date: '29/06/2022',
              iconData: Icons.home,
              colorValue: Colors.red,
            ),
            ContainerCardExtrato(
              title: 'Angeloni',
              value: 'R\$ 258,86',
              category: 'Compras',
              date: '27/06/2022',
              iconData: Icons.shopping_bag,
              colorValue: Colors.red,
            ),
            ContainerCardExtrato(
              title: 'Banco tal',
              value: 'R\$ 3000,00',
              category: 'Empréstimo',
              date: '20/06/2022',
              iconData: Icons.balance_outlined,
              colorValue: Colors.green,
            ),
            ContainerCardExtrato(
              title: 'Banho Zoey',
              value: '- R\$ 140,00',
              category: 'Pet Shop',
              date: '10/06/2022',
              iconData: Icons.shower,
              colorValue: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
