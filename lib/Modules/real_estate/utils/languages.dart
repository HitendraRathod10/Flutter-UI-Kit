import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'hi': {"choose language": "भाषा चुनें", "profile": "प्रोफ़ाइल"},
        'gu': {"choose language": "ભાષા પસંદ કરો", "profile": "પ્રોફાઇલ"},
        'en': {"choose language": "Choose Language", "profile": "Profile"},
        'he': {"choose language": "בחר שפה", "profile": "פּרוֹפִיל"},
        'ar': {"choose language": "اختر اللغة", "profile": "حساب تعريفي"}
      };
}
