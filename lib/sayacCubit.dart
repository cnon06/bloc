import 'package:flutter_bloc/flutter_bloc.dart';

class sayacCubit extends Cubit<int>
{
  sayacCubit() : super(0);

  void sayacArttir()
  {
    int sayac = state +1;
    emit(sayac);
  }


  void sayacAzalt(int miktar)
  {
    int sayac = state -miktar;
    emit(sayac);
  }
}