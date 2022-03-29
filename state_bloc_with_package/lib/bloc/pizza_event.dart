part of 'pizza_bloc.dart';

@immutable
abstract class PizzaEvent extends Equatable {
  const PizzaEvent();

  //
  @override
  List<Object> get props => [];
}

// event 1
class AddPizza extends PizzaEvent {
  final Pizza pizza;
  //
  const AddPizza(this.pizza);

  //
  @override
  List<Object> get props => [pizza];
}

// event 2
class RemovedPizza extends PizzaEvent {
  final Pizza pizza;
  //
  const RemovedPizza(this.pizza);

  //
  @override
  List<Object> get props => [pizza];
}

// event 2
class LoadPizzaCounter extends PizzaEvent {}
