import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveler/bases/base_state.dart';

abstract class BaseViewModel<T extends BaseState> extends Cubit<T> {
  BaseViewModel(T initialState) : super(initialState);
}
