/// A class containing background asset constants.
/// Currently empty but serves as a placeholder for future background assets.
class AssetsConstantsBg {}

/// A class containing image asset constants.
/// Provides static getters for accessing image asset paths.
class AssetsConstantsImg {
  /// Path to the QR image asset.
  static String get imgQR => 'assets/img/img_qr.png';

  /// Path to the filled QR image asset.
  static String get imgQRFill => 'assets/img/img_qr_fill.png';
}

/// A class containing icon asset constants.
/// Currently empty but serves as a placeholder for future icon assets.
class AssetsConstantsIc {}

/// A class containing regular expressions for validation.
class RegexConstants {
  /// Regular expression to validate names.
  /// Allows up to 30 characters including letters and spaces.
  static String regexName = r'^[A-Za-zÀ-ÖØ-öø-ÿ ]{0,30}$';
}
