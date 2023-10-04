import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        // English_Language
        'en_US': {
          'name': 'Hamza Qasim',
          'domain': 'Flutter developer,',
          'localization': 'This localization uses GetX.',
        },
        // Hindi_Language
        'hi_IN': {
          'name': 'हम्ज़ा क़ासिम',
          'domain': 'स्पंदन डेवलपर',
          'localization': 'यह स्थानीयकरण GetX का उपयोग करता है',
        },

        // Urdu_Language
        'ur_PK': {
          'name': 'حمزہ قاسم',
          'domain': 'فلٹر ڈویلپر',
          'localization': 'یہ لوکلائزیشن GetX استعمال کرتی ہے۔',
        },
      };
}
