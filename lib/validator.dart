class Validator {
  static String? validateField({required String value}) {
    if (value.isEmpty) {
      return 'Field can\'t be required';
    }
    return null;
  }

  static String? validateUserID({required String uid}) {
    if (uid.isEmpty) {
      return 'User ID can\'t be empty';
    } else if (uid.length <= 3) {
      return 'User ID must be at least 4 characters long';
    }
    return null;
  }
}
