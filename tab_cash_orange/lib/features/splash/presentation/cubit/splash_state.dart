part of 'splash_cubit.dart';

abstract class SplashState extends Equatable {
  final Locale locale ;
  const SplashState(this.locale);

  @override
  List<Object> get props => [];
}

class ChangeLangState extends SplashState{
 const  ChangeLangState(Locale selectedRole):super(selectedRole);
}
