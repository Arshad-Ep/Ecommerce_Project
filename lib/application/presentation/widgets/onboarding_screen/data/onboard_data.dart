class Onboard {
  final String image, title, title2, description;

  Onboard({
    required this.image,
    required this.title,
    required this.title2,
    required this.description,
  });
}

// ignore: non_constant_identifier_names
final List<Onboard> demo_data = [
  Onboard(
    image: "assets/images/Onboarding1.png",
    title: "20% Discount",
    title2: "New Arrival Product",
    description: "Publish Up your selfies to make yourself more beautiful with this app",
  ),
  Onboard(
    image: "assets/images/Onboarding2.png",
    title: "Take Advantage",
    title2: "Of The Offer Shopping",
    description: "Publish Up your selfies to make yourself more beautiful with this app",
  ),
  Onboard(
    image: "assets/images/Onboarding3.png",
    title: "All Types Offers",
    title2: "Within Your Reach",
    description: "Publish Up your selfies to make yourself more beautiful with this app",
  )
];
