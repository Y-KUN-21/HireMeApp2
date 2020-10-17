class Language {
  final int id;
  final String name;
  final String code;

  Language(this.id, this.name, this.code);

  static List<Language> languageList() {
    return <Language>[
      Language(2, "English", "en"),
      Language(1, "हिन्दी", "hi"),
      Language(2, "ਪੰਜਾਬੀ", "pa"),
      Language(1, "தமிழ் ", "ta"),
      Language(2, "తెలుగు", "te"),
      Language(1, "ગુજરાતી", "gu"),
      Language(2, "ಕನ್ನಡ", "kn"),
    ];
  }
}
