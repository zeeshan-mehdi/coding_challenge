class Validation{
  static validateString(String text){
    if(text !='' && text.isNotEmpty){
      return true;
    }
    return false;
  }
}