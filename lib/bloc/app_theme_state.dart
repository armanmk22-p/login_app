part of 'app_theme_cubit.dart';

class AppThemeState extends Equatable {
  final bool isMode;
  const AppThemeState({required this.isMode});

  factory AppThemeState.initial() {
    return AppThemeState(isMode: false);
  }

  @override
  List<Object?> get props => [isMode];

  @override
  String toString() {
    return 'AppThemeState{isMode: $isMode}';
  }

  AppThemeState copyWith({
    bool? isMode,
  }) {
    return AppThemeState(isMode: isMode ?? this.isMode);
  }
}
