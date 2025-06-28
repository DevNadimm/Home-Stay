import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodCubit extends Cubit<String> {
  PaymentMethodCubit() : super('card');

  void selectPayment(String method) => emit(method);
}
