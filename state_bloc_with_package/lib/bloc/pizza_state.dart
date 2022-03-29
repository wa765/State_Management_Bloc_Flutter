part of 'pizza_bloc.dart';

@immutable
abstract class PizzaState extends Equatable {
  const PizzaState();
  //
  @override
  List<Object> get props => [];
}

// event 1
class PizzaInitial extends PizzaState {}

// event 2
class PizzaLoaded extends PizzaState {
  final List<Pizza> pizzas;

  // named contructor
  const PizzaLoaded({required this.pizzas});

  // ovveride
  @override
  List<Object> get props => [pizzas];
}
