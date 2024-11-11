import 'package:babershop_app/models/reserva.dart';
import 'package:babershop_app/views/buy/buy_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReservaController extends GetxController{
  BuyController buyController = Get.find<BuyController>();
  var reservas = <Reserva>[].obs;


  void deletarReserva(Reserva reserva, BuildContext context){
    buyController.reservas.remove(reserva);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Deletado com sucesso',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}