class TValidator {
  static String? validateEmail(String? value){
    if(value ==null || value.isEmpty){
      return 'Email is required';
    }
    
    //Regular expression for email validation 
    final emailRegEXP = RegExp(r'[\w+]');

    if (!emailRegEXP.hasMatch(value)){
      return'Invalid email address.';
    }
    return null;
  }


  static String? validatePassword(String? value){
    if (value == null || value.isEmpty){
      return 'password is required';
    }

    if (value.length <6) {
      return'password must be at least 6 characters long';
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return'password must contain at least one Uppercase letter.';
    }

    if(!value.contains(RegExp(r'[0-9]'))){
      return'password must contain at least one number.';
    }

     if(!value.contains(RegExp(r'[!@#$%^&*()_+-=<>{}[]]:;.,'))){
      return'password must contain at least one character.';
    }

     return null ;
  }

  static String? validatePhoneNumber(String? value){
    if (value == null || value.isEmpty){
      return'phone number is required';
    }

    final PhoneRegExp = RegExp(r'^\d{10}$');

    if (!PhoneRegExp.hasMatch(value)){
      return''
          'Invalid phone number format (10 digits requird).';
    }
    return null;
  }
}