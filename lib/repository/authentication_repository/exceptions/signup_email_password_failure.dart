

class SignUpWithEmailAndPasswordFailure {
  final String message;

  SignUpWithEmailAndPasswordFailure([this.message = "An Unknown error occured."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch(code) {
      case "weak-password" :
        return  SignUpWithEmailAndPasswordFailure("Please enter a stronger password.");
      case "invalid-email" :
        return SignUpWithEmailAndPasswordFailure("Email is not valid or badly formatted.");
      case "email_already_in use" :
        return SignUpWithEmailAndPasswordFailure("An account already exists for that email.");
      case "operation-not-allowed" :
        return SignUpWithEmailAndPasswordFailure("This user has been disabled. Please contact support for help.");
      case "user-disabled" :
        return SignUpWithEmailAndPasswordFailure("Please enter a stronger password.");
      default:
        return  SignUpWithEmailAndPasswordFailure("");
    }
  }
}