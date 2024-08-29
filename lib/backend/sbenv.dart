/// Environment variables and shared app constants.
abstract class SbEnv {
  static const String sbEnvUrl = String.fromEnvironment(
    'SBENVURL',
    defaultValue: '',
  );

  static const String sbEnvPubKey = String.fromEnvironment(
    'SBENVPUBKEY',
    defaultValue: '',
  );

  static const String sbEnvSUKey = String.fromEnvironment(
    'SBENVSUKEY',
    defaultValue: '',
  );
}
