class HelperValidator {
  static String? nameValidate(String value) {
    if (value.isEmpty) {
      return 'This field cannot be empty.';
    } else if (value.length < 2) {
      return 'This field must be at least 2 characters long.';
    } else if (value.length > 50) {
      return 'This field must be less than 50 characters long.';
    } else {
      return null;
    }
  }
}
