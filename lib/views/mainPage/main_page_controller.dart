import 'package:babershop_app/models/produto.dart';
import 'package:babershop_app/views/login/login_controller.dart';
import 'package:get/get.dart';

class Mainpagecontroller extends GetxController {
  LoginController loginController = Get.find<LoginController>();
  RxBool corteCheckBox = false.obs;
  RxBool lavagemCheckBox = false.obs;
  RxBool barbaCheckBox = false.obs;

  var produtos = {
    "corte": Produto('Corte de cabelo', false, 30.0),
    "lavagem": Produto('Lavagem de cabelo', false, 20.00),
    "barba": Produto('Design de barba', false, 30.0)
  }.obs;

  RxList<Produto> produtosSeleciontados = <Produto>[].obs;

  void addOrRemoveSelectedProduct(Produto produto){
    if(produto.isSelected){
      produtosSeleciontados.add(produto);
    }else{
      produtosSeleciontados.remove(produto);
    }
  }

  int countSelectedProducts() {
    return produtos.values
        .where((produto) => produto.isSelected == true)
        .length;
  }
}
