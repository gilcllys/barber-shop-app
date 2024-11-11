import 'package:babershop_app/models/reserva.dart';
import 'package:babershop_app/views/reservas/reserva_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ReservaView extends GetView<ReservaController> {
  const ReservaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF302238),
      appBar: AppBar(
        backgroundColor: const Color(0xFF302238),
        title: const Text(
          'Reservas',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => Center(
          child: controller.buyController.reservas.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: controller.buyController.reservas.length,
                    itemBuilder: (BuildContext context, int index) {
                      Reserva data = controller.buyController.reservas[index];
                      return Card(
                        child: SizedBox(
                          height: 290,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.black45,
                                width: double.infinity,
                                child: const Text(
                                  'Serviços',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 90,
                                child: ListView.builder(
                                  itemCount: data.produtos.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Text(
                                      // '${data.produtos.length}',
                                      '${data.produtos[index]}',
                                      textAlign: TextAlign.center,
                                    );
                                  },
                                ),
                              ),
                              const Text('Tipo de pagamento'),
                              Text(data.tipoPagamento),
                              const Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Chip(
                                    avatar: const Icon(Icons.calendar_month),
                                    label: Text(
                                      DateFormat("dd/MM/yyyy")
                                          .format(data.data)
                                          .toString(),
                                    ),
                                  ),
                                  Chip(
                                    avatar: const Icon(Icons.watch_later),
                                    label: Text(
                                      '${data.horario.hour}: ${data.horario.minute}',
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                color: Colors.red,
                                child: TextButton(
                                  onPressed: () {
                                    controller.deletarReserva(data, context);
                                  },
                                  child: const Text(
                                    'Excluir',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              : const Text(
                  'Sem reservas',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
        ),
      ),
    );
  }
}
