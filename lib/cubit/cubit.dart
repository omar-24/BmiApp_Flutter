import 'package:bmi_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class appcubit extends Cubit<Cstate>{
  appcubit():super(initialstate());
  int Wnum=50,Anum=20;
  double Hnum=170;
  bool male = false ;
  bool  female=false;
  double? x;

  void incrementW(){
    Wnum++;
    emit(refesh());
  }
  void decrementW(){
    Wnum>0?Wnum--:Wnum=0;
    emit(refesh());

  }
  void incrementA(){
    Anum++;
    emit(refesh());

  }
  void decremententA(){
    Anum>0?Anum--:Anum=0;
    emit(refesh());

  }
  void height(){
    emit(refesh());
  }

  void femalebottom(){
    female? female=false:female=true;
    male? male=false:male=false;
    emit(refesh());
  }

  void malebottom(){
    male? male=false:male=true;
    female? female=false:female=false;
    emit(refesh());
  }
}