import 'package:babershop_app/views/buy/buy_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../models/produto.dart';

class BuyScreen extends GetView<BuyController> {
  const BuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF302238),
        appBar: AppBar(
          backgroundColor: const Color(0xFF302238),
          title: const Text(
            'Finalizando a compra',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/user_logo.png'),
            ),
          ],
          toolbarHeight: 50,
        ),
        body: Container(
          margin: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: controller
                      .mainPageController.produtosSeleciontados.length,
                  itemBuilder: (BuildContext context, int index) {
                    Produto produto = controller
                        .mainPageController.produtosSeleciontados[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: Text(produto.nome),
                          trailing: Text('${produto.price}'),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'TOTAL - R\$',
                      style: TextStyle(color: Colors.white),
                    ),
                    Obx(() => Text(
                          '${controller.setTotalPrice()}',
                          style: const TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
              const Divider(
                color: Colors.blueGrey,
              ),
              SizedBox(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.only(top: 10),
                      child: Text(
                        'Informações da reserva',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 115,
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  controller.selectedDayReservation(context);
                                },
                                child: const Text('Selecione o dia'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Obx(() => Chip(
                                      avatar: const Icon(Icons.calendar_month),
                                      label: Text(
                                        DateFormat("dd/MM/yyyy")
                                            .format(
                                                controller.selectedDate.value)
                                            .toString(),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 115,
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  controller.selectedTimeReservation(context);
                                },
                                child: const Text('Selecione a hora'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Obx(
                                  () => Chip(
                                    avatar: const Icon(Icons.watch_later),
                                    label: Text(
                                      '${controller.selectedTime.value.hour}: ${controller.selectedTime.value.minute}',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Escolher Forma de pagamento',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Obx(
                      () => DropdownMenu<String>(
                        width: 300,
                        initialSelection: controller.paymentOptions.first,
                        onSelected: (String? value) {
                          controller.selectedPayment.value = value!;
                        },
                        textStyle: const TextStyle(color: Colors.white),
                        dropdownMenuEntries: controller.paymentOptions
                            .map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                            value: value,
                            label: value,
                          );
                        }).toList(),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.addReserva(
                          horario: controller.selectedTime.value,
                          data: controller.selectedDate.value,
                          tipoPagamento: controller.selectedPayment.value,
                          produtos: controller
                              .mainPageController.produtosSeleciontados ,
                          context
                        );
                      },
                      child: const Text('Finalizar a reserva'),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
