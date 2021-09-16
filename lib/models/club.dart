// this class handles the clubs and the admins
class Club {
  final String clubName;
  final int clubMembers;
  final List<ClubAdminMembers> clubAdmin;

  // create a constructor home_screen
  Club({
    this.clubName = "",
    this.clubMembers = 0,
    this.clubAdmin = const [],
  });
}

// club Admin Members
class ClubAdminMembers {
  final String adminFirstName, adminLastName;
  List<AdminRole> adminRole;

  ClubAdminMembers(
      {this.adminFirstName = "",
      this.adminLastName = "",
      this.adminRole = const []});
}

// club admin role
class AdminRole {
  String editor, president, secretary, treasure;

  AdminRole(
      {this.editor = "",
      this.president = "",
      this.secretary = "",
      this.treasure = ""});
}
