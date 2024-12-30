class AppStateModel {
  final bool isLoggedIn;
  final String? accessToken;
  final bool isLoading;

  AppStateModel({
    this.isLoggedIn = false,
    this.accessToken,
    this.isLoading = false,
  });

  AppStateModel copyWith({
    bool? isLoggedIn,
    String? accessToken,
    bool? isLoading,
  }) {
    return AppStateModel(
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      accessToken: accessToken ?? this.accessToken,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
