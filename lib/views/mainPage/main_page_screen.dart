import 'package:babershop_app/components/drawer/drawer_component.dart';
import 'package:babershop_app/views/mainPage/main_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mainpagescreen extends GetView<Mainpagecontroller> {
  const Mainpagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      backgroundColor: const Color(0xFF302238),
      appBar: AppBar(
        backgroundColor: const Color(0xFF302238),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/user_logo.png'),
            controller.loginController.userData["user"].toString().isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      controller.loginController.userData["user"].toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  )
                : const Text(''),
          ],
        ),
        centerTitle: true,
        toolbarHeight: 250,
      ),
      body: Container(
        alignment: Alignment.center,
        height: 550,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 400,
              child: Divider(),
            ),
            SizedBox(
              width: 400,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(
                    () => Card(
                      child: ListTile(
                        leading: Image.asset('assets/images/corte.png'),
                        title: const Text(
                          'Corte de cabelo',
                        ),
                        subtitle: const Text(
                          'Todos os estilos',
                          style: TextStyle(
                            color: Color(0xff868686),
                          ),
                        ),
                        trailing: Checkbox(
                          value: controller.corteCheckBox.value,
                          onChanged: (bool? value) {
                            controller.corteCheckBox.value = value!;
                            controller.produtos['corte']?.isSelected =
                                controller.corteCheckBox.value;
                            controller.addOrRemoveSelectedProduct(
                                controller.produtos['corte']!);
                          },
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => Card(
                      child: ListTile(
                          leading: Image.asset('assets/images/lavagem.png'),
                          title: const Text(
                            'Lavagem de cabelo',
                          ),
                          subtitle: const Text(
                            'Lavagem completa',
                            style: TextStyle(
                              color: Color(0xff868686),
                            ),
                          ),
                          trailing: Checkbox(
                            value: controller.lavagemCheckBox.value,
                            onChanged: (bool? value) {
                              controller.lavagemCheckBox.value = value!;
                              controller.produtos['lavagem']?.isSelected =
                                  controller.lavagemCheckBox.value;
                              controller.addOrRemoveSelectedProduct(
                                  controller.produtos['lavagem']!);
                            },
                          )),
                    ),
                  ),
                  Obx(
                    () => Card(
                      child: ListTile(
                          leading: Image.asset('assets/images/barba.png'),
                          title: const Text(
                            'Design de barba',
                          ),
                          subtitle: const Text(
                            'Corte personalizado da barba',
                            style: TextStyle(
                              color: Color(0xff868686),
                            ),
                          ),
                          trailing: Checkbox(
                            value: controller.barbaCheckBox.value,
                            onChanged: (bool? value) {
                              controller.barbaCheckBox.value = value!;
                              controller.produtos['barba']?.isSelected =
                                  controller.barbaCheckBox.value;
                              controller.addOrRemoveSelectedProduct(
                                  controller.produtos['barba']!);
                            },
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  color: Color(0xffFF9A3E), shape: BoxShape.circle),
              child: IconButton(
                icon: const Icon(Icons.shopping_basket),
                onPressed: () {
                  if (controller.countSelectedProducts() > 0) {
                    Get.toNamed('buy');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        showCloseIcon: true,
                        backgroundColor: Colors.red,
                        content: Text('Selecione pelo menos um produto'),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
