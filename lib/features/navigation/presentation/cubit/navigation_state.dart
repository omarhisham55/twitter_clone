part of 'navigation_cubit.dart';

abstract class NavigationState extends Equatable {
  final int index;
  const NavigationState(this.index);

  @override
  List<Object> get props => [index];
}

class NavigationInitial extends NavigationState {
  const NavigationInitial(super.index);
}

final class ChangePageState extends NavigationState {
  const ChangePageState(int index) : super(index);
}