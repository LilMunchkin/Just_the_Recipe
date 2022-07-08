class StateModel {
  bool isLoading;
  // Make sure 'favorites' is not null:
  List<String> favorites = [];

  StateModel({
    this.isLoading = false,
  });
}
