import 'package:babershop_app/models/produto.dart';
import 'package:babershop_app/models/reserva.dart';
import 'package:babershop_app/views/mainPage/main_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyController extends GetxController {
  Mainpagecontroller mainPageController = Get.find<Mainpagecontroller>();
  RxDouble totalPrice = 0.0.obs;
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;
  RxString selectedPayment = ''.obs;
  RxList<Reserva> reservas = <Reserva>[].obs;

  RxList<String> paymentOptions = [
    '-',
    'Pix',
    'Dinheiro',
    'Cartão de crédito',
    'Cartão de débito',
  ].obs;

  double setTotalPrice() {
    return mainPageController.produtosSeleciontados
        .map((produto) => produto.price)
        .toList()
        .reduce((a, b) => a + b);
  }

  void selectedDayReservation(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Data inicial ao abrir o seletor
      firstDate: DateTime.now(), // Data mínima
      lastDate: DateTime(2100), // Data máxima
    );
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }

  Future<void> selectedTimeReservation(BuildContext context) async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: selectedTime.value,
    );
    if (time != null) {
      selectedTime.value = time;
    }
  }

//TODO: ARRUMAR AS RESERVAS
  void addReserva(
    BuildContext context, {
    required TimeOfDay horario,
    required DateTime data,
    required String tipoPagamento,
    required List<Produto> produtos,
  }) {
    try {
      var listaProdutos =
          produtos.map((elemento) => elemento.nome.toString());
      reservas.add(
        Reserva(
          horario,
          data,
          tipoPagamento,
          [...listaProdutos],
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Reserva com sucesso',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
      );
      goToConcluded();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            '$e',
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void goToConcluded() {
    Get.toNamed('/concluded');
  }
}
