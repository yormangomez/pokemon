part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  late int couterIndex;

  SettingsState(this.couterIndex);

  @override
  List<Object> get props => [this.couterIndex];
  @override
  String toString() => '''
  couterIndex: ${this.couterIndex}
''';
}
