class Profile {
  String name;
  int age;
  String email;
  String bio;

  Profile(this.name, this.age, this.email, this.bio);

  void printProfile() {
    print("Name: $name");
    print("Age: $age");
    print("Email: $email");
    print("Bio: $bio");
  }
}

void main() {
  // Create a profile
  var profile = Profile(
    "Siddhi Sharma",
    19,
    "kanak5647@gmail.com",
    "I am a software developer with a passion for coding."
  );

  // Print the profile details
  profile.printProfile();
}
