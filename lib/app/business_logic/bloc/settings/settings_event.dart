part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

class PageTapped extends SettingsEvent {
  final int indexCouter;
  const PageTapped({required this.indexCouter});

  @override
  String toString() => 'PageTapped: $indexCouter';
}
