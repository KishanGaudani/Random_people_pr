class RendomData {
  final String name;
  final String name2;
  final String street;
  final String city;
  final String state;
  final String country;
  final String gender;
  final int age;
  final String? email;
  final String image;

  RendomData({
    required this.name,
    required this.name2,
    required this.street,
    required this.country,
    required this.city,
    required this.state,
    required this.age,
    this.email,
    required this.gender,
    required this.image,
  });

  factory RendomData.fromMap({required Map data}) {
    return RendomData(
      name: data["results"][0]["name"]["title"],
      name2: data["results"][0]["name"]["first"],
      street: data["results"][0]["location"]["street"]["name"],
      city: data["results"][0]["location"]["city"],
      age: data["results"][0]["dob"]["age"],
      state: data["results"][0]["location"]["state"],
      country: data["results"][0]["location"]["country"],
      email: data["results"][0]["email"],
      gender: data["results"][0]["gender"],
      image: data["results"][0]["picture"]["large"],
    );
  }
}
