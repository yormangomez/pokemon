part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  late int couterIndex;

  SettingsState({required this.couterIndex});

  @override
  List<Object> get props => [couterIndex];
  @override
  String toString() => '''
  couterIndex: ${this.couterIndex}
''';
}

class SettingsInitial extends SettingsState {
  SettingsInitial() : super(couterIndex: 0);
}

class SettingsPaged extends SettingsState {
  final int newCouterIndex;
  SettingsPaged({required this.newCouterIndex}) : super(couterIndex: newCouterIndex);
}
