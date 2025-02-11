class OnboardingModel{
  final String image;
  final String mainText;
  final String descriptionText;

  OnboardingModel({required this.image, required this.mainText, required this.descriptionText});
}
List<OnboardingModel> onboardingModel = [
  OnboardingModel(image: "assets/images/onboarding1.png", mainText: "Welcome to the world of easy shopping", descriptionText: "You can explore thousands of products easily and quickly; we are here to make your shopping experience enjoyable and smooth."),
  OnboardingModel(image: "assets/images/onboarding1.png", mainText: "Exclusive offers tailored for you", descriptionText: "Get exclusive deals and discounts that suit your taste. Enjoy a personalized shopping experience that meets all your needs."),
  OnboardingModel(image: "assets/images/onboarding1.png", mainText: "Secure and fast payment with a single touch", descriptionText: "Enjoy a smooth and secure payment experience with various payment options. Shop with confidence and pay effortlessly."),
];