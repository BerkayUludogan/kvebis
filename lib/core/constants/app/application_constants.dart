class ApplicationConstants {
  static const emailRegiex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,})(?!\.co$))$'; /*  */

  static const stringWithoutRegiex = r'^[a-zA-ZğĞıİöÖüÜşŞçÇ ]+$';
  static const stringRegiex = '[a-zA-ZğĞıİöÖüÜşŞçÇ ]';
  static const phoneRegiex =
      r'^(\+?90|\b0)(\d{3})[- ]?(\d{3})[- ]?(\d{2})[- ]?(\d{2})$';

  static const numberRegiex = r'^-?[0-9]+(\.[0-9]+)?$';
}
