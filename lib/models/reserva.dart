import 'package:flutter/material.dart';

class Reserva {
  TimeOfDay horario;
  DateTime data;
  String tipoPagamento;
  dynamic produtos;

  Reserva(
    this.horario,
    this.data,
    this.tipoPagamento,
    this.produtos,
  );
}
