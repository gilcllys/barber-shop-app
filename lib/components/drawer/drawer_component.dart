import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerComponent extends GetView<DrawerController> {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF302238),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(
                Icons.book_sharp,
                color: Colors.white,
              ),
              title: const Text(
                'Reserva',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
              ),
              onTap: () {
                Get.toNamed('/reservas');
              },
            ),
            ListTile(
              title: const Text(
                'Sair',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(
                Icons.exit_to_app_outlined,
                color: Colors.white,
              ),
              onTap: () {
                Get.offAllNamed('home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
