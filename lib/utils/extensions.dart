import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocCubit on BuildContext {
  T getCubit<T extends Cubit>() => BlocProvider.of<T>(this);
}