import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'hi': {
          "choose language": "भाषा चुनें",
          "profile": "प्रोफ़ाइल",
          "edit profile": "प्रोफ़ाइल संपादित करें",
          "change password": "पासवर्ड बदलें",
          "bookmarks": "बुकमार्क",
          "change language": "भाषा बदलें",
          "app settings": "एप्लिकेशन सेटिंग",
          "logout": "लॉग आउट",
          "change profile photo": "प्रोफ़ाइल फ़ोटो बदलें",
          "username": "उपयोगकर्ता नाम",
          "email": "ईमेल",
          "contact no": "संपर्क नंबर।",
          "save changes": "परिवर्तनों को सुरक्षित करें",
          "current password": "वर्तमान पासवर्ड",
          "type current password here": "यहां करंट पासवर्ड टाइप करें",
          "new password": "नया पासवर्ड",
          "type new password here": "यहां नया पासवर्ड टाइप करें",
          "confirm new password": "नए पासवर्ड की पुष्टि करें",
          "type confirm new password here":
              "यहां कन्फर्म न्यू पासवर्ड टाइप करें",
          "update password": "पासवर्ड अपडेट करें",
          "details": "विवरण",
          "call": "पुकारना",
          "chat": "बात करना",
          "month": " / महीना",
          "govt. charges": "+ सरकार. प्रभार",
          "description": "विवरण",
          "published on": "पर प्रकाशित",
          "sales enquiries": "बिक्री पूछताछ",
          "app settings screen": "ऐप सेटिंग्स स्क्रीन",
          "display": "प्रदर्शन",
          "dark mode": "डार्क मोड",
          "display mode": "प्रदर्शन प्रणाली",
          "choose how your flutter ui kit experience looks for this device...":
              "चुनें कि इस डिवाइस के लिए आपका फ़्लटर यूआई किट अनुभव कैसा दिखेगा...",
          "device settings": "उपकरण सेटिंग्स",
          "light mode": "लाइट मोड",
          "if you choose device settings, this app will use the mode that's already selected in this device's settings.":
              "यदि आप डिवाइस सेटिंग चुनते हैं, तो यह ऐप उस मोड का उपयोग करेगा जो इस डिवाइस की सेटिंग में पहले से ही चयनित है।",
          "what are looking for?": "आपको क्या \nचाहिए?",
          "current location": "वर्तमान स्थान",
          "house": "घर",
          "flats / apartments": "फ्लैट/अपार्टमेंट",
          "residential": "आवासीय",
          "commercial": "व्यावसायिक",
          "2000+ results": "2000+ परिणाम",
          "5000+ results": "5000+ परिणाम",
          "1000+ results": "1000+ परिणाम",
          "recommend for you": "आपके लिए अनुशंसा",
          "home": "घर",
          "location": "जगह",
          "search location": "स्थान खोजें",
          "chats": "चैट",
          "search by name": "नाम से खोजें",
          "search by street/area/city": "सड़क/क्षेत्र/शहर के आधार पर खोजें",
          "use my current location": "मेरे वर्तमान स्थान का उपयोग करें",
          "recent searches": "हाल की खोजें",
          "view more": "और देखें",
          "type message here": "यहां संदेश टाइप करें",
          "are you sure want to logout ?":
              "क्या आप वाकई लॉगआउट करना चाहते हैं ?",
          "no": "नहीं",
          "yes": "हाँ",
          "delete message": "संदेश को हटाएं",
          "are you sure want to delete this message from chat ?":
              "क्या आप वाकई इस संदेश को चैट से हटाना चाहते हैं ?",
          "cancel": "रद्द करना",
          "bed": "बिस्तर",
          "bath": "स्नानघर",
          "sqft": "वर्ग. फुट",
          //New words for medical module
          "settings": "समायोजन",
          "change theme": "विषय को परिवर्तित करें",
          "name": "नाम",
          "date of birth": "जन्म की तारीख",
          "update": "आधुनिकतम बनाना",
          "profile updated successfully.":
              "प्रोफाइल को सफलतापूर्वक अपडेट किया गया।",
          "password changed successfully.": "पासवर्ड सफलतापूर्वक बदला गया।",
          "notification": "अधिसूचना",
          "hello": "नमस्ते,",
          "book": "बुक करना",
          "my appointment": "मेरी नियुक्ति",
          "video": "वीडियो",
          "consultation": "परामर्श",
          "packages": "संकुल",
          "buy now": "अभी खरीदें",
          "articles": "लेख",
          "choose where you want to select the image":
              "चुनें कि आप छवि का चयन कहाँ करना चाहते हैं",
          "camera": "कैमरा",
          "gallery": "गैलरी",
          "knee pain": "घुटने के दर्द",
          "doctors": "डॉक्टरों",
          "available for today": "आज के लिए उपलब्ध है",
          "try to tomorrow": "कल प्रयास करें",
          "book your slot tomorrow because doctor is not available":
              "कल अपना स्लॉट बुक करें क्योंकि डॉक्टर उपलब्ध नहीं है",
          "ok": "ठीक है",
          "your appointment has been booked successfully":
              "आपकी नियुक्ति सफलतापूर्वक बुक कर ली गई है.",
          "book your appointment": "अपनी नियुक्ति बुक करें",
          "choose your appointment date": "अपनी नियुक्ति तिथि चुनें",
          "morning": "सुबह",
          "afternoon": "दोपहर",
          "evening": "शाम",
          "book now": "अभी बुक करें",
          "health package": "स्वास्थ्य पैकेज",
          "select your symptom": "अपना लक्षण चुनें",
          "anxiety": "चिंता",
          "fever": "बुखार",
          "cough": "खाँसी",
          "cold": "ठंड",
          "chest pain": "छाती में दर्द",
          "headache": "सिरदर्द",
          "depression": "depression",
          "hairfall": "बाल झड़ना",
          "diabetes": "मधुमेह",
          "injury": "चोट",
          "choose doctor": "डॉक्टर चुनें",
          "request for online consultation": "ऑनलाइन परामर्श के लिए अनुरोध",
          "patient name": "मरीज़ का नाम",
          "patient age": "मरीज़ की आयु",
          "patient contact number": "मरीज़ संपर्क नंबर",
          "patient address": "मरीज़ का पता",
          "submit": "जमा करना",
          "note :": "टिप्पणी :",
          "doctor will be co-ordinate with you in 24 hours via video call.":
              "डॉक्टर 24 घंटे में वीडियो कॉल के जरिए आपसे को-ऑर्डिनेट करेंगे।",
          "your request has been submitted. kindly wait for 24 hours.":
              "आपका अनुरोध सबमिट कर दिया गया है। कृपया 24 घंटे तक प्रतीक्षा करें|",
        },
        'gu': {
          "choose language": "ભાષા પસંદ કરો",
          "profile": "પ્રોફાઇલ",
          "edit profile": "પ્રોફાઇલ સંપાદિત કરો",
          "change password": "પાસવર્ડ બદલો",
          "bookmarks": "બુકમાર્ક્સ",
          "change language": "ભાષા બદલો",
          "app settings": "એપ્લિકેશન સેટિંગ્સ",
          "logout": "લૉગ આઉટ",
          "change profile photo": "પ્રોફાઇલ ફોટો બદલો",
          "username": "વપરાશકર્તા નામ",
          "email": "ઈમેલ",
          "contact no": "સંપર્ક નં.",
          "save changes": "ફેરફારો સંગ્રહ",
          "current password": "અત્યારનો પાસવર્ડ",
          "type current password here": "વર્તમાન પાસવર્ડ અહીં ટાઈપ કરો",
          "new password": "નવો પાસવર્ડ",
          "type new password here": "અહીં નવો પાસવર્ડ ટાઈપ કરો",
          "confirm new password": "નવાપાસવર્ડની પુષ્ટી કરો",
          "type confirm new password here": "અહીં કન્ફર્મ નવો પાસવર્ડ લખો",
          "update password": "પાસવર્ડ અપડેટ કરો",
          "details": "વિગતો",
          "call": "કૉલ",
          "chat": "ચેટ",
          "month": " / માસ",
          "govt. charges": "+ સરકાર. શુલ્ક",
          "description": "વર્ણન",
          "published on": "પર પ્રકાશિત",
          "sales enquiries": "વેચાણ પૂછપરછ",
          "app settings screen": "એપ્લિકેશન સેટિંગ્સ સ્ક્રીન",
          "display": "પ્રદર્શન",
          "dark mode": "ડાર્ક મોડ",
          "display mode": "પ્રદર્શન મોડ",
          "choose how your flutter ui kit experience looks for this device...":
              "આ ઉપકરણ માટે તમારો ફ્લટર UI કિટનો અનુભવ કેવો દેખાય છે તે પસંદ કરો...",
          "device settings": "ઉપકરણ સેટિંગ્સ",
          "light mode": "લાઇટ મોડ",
          "if you choose device settings, this app will use the mode that's already selected in this device's settings.":
              "જો તમે ઉપકરણ સેટિંગ્સ પસંદ કરો છો, તો આ એપ્લિકેશન તે મોડનો ઉપયોગ કરશે જે આ ઉપકરણની સેટિંગ્સમાં પહેલેથી પસંદ કરેલ છે.",
          "what are looking for?": "શું શોધી \nરહ્યા છો?",
          "current location": "અત્યારની જ્ગ્યા",
          "house": "ઘર",
          "flats / apartments": "ફ્લેટ / એપાર્ટમેન્ટ",
          "residential": "રહેણાંક",
          "commercial": "વ્યાપારી",
          "2000+ results": "2000+ પરિણામો",
          "5000+ results": "5000+ પરિણામો",
          "1000+ results": "1000+ પરિણામો",
          "recommend for you": "તમારા માટે ભલામણ કરો",
          "home": "ઘર",
          "location": "સ્થાન",
          "search location": "સ્થાન શોધો",
          "chats": "ચેટ્સ",
          "search by name": "નામ દ્વારા શોધો",
          "search by street/area/city": "શેરી/વિસ્તાર/શહેર દ્વારા શોધો",
          "use my current location": "મારા વર્તમાન સ્થાનનો ઉપયોગ કરો",
          "recent searches": "તાજેતરની શોધ",
          "view more": "વધુ જોવો",
          "type message here": "અહીં સંદેશ લખો",
          "are you sure want to logout ?":
              "શું તમે ખરેખર લૉગઆઉટ કરવા માંગો છો ?",
          "no": "ના",
          "yes": "હા",
          "delete message": "સંદેશ કાઢી નાખો",
          "are you sure want to delete this message from chat ?":
              "શું તમે ખરેખર આ સંદેશને ચેટમાંથી કાઢી નાખવા માંગો છો ?",
          "cancel": "રદ કરો",
          "bed": "પથારી",
          "bath": "બાથરૂમ",
          "sqft": "ચો.ફૂટ",
          "settings": "સેટિંગ્સ",
          "change theme": "થીમ બદલો",
          "name": "નામ",
          "date of birth": "જન્મ તારીખ",
          "update": "અદ્યતન બનાવવું",
          "profile updated successfully.": "પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઈ.",
          "password changed successfully.": "પાસવર્ડ સફળતાપૂર્વક બદલાયો.",
          "notification": "સૂચના",
          "hello": "નમસ્તે,",
          "book": "નોંધ કરવું",
          "my appointment": "મારી મુલાકાત",
          "video": "વિડિઓ",
          "consultation": "પરામર્શ",
          "packages": "પેકેજો",
          "buy now": "હમણાં જ ખરીદો",
          "articles": "લેખ",
          "choose where you want to select the image":
              "તમે જ્યાં છબી પસંદ કરવા માંગો છો તે પસંદ કરો",
          "camera": "કેમેરા",
          "gallery": "ગેલેરી",
          "knee pain": "ઘૂંટણનો દુખાવો",
          "doctors": "ડોકટરો",
          "available for today": "આજે માટે ઉપલબ્ધ છે",
          "try to tomorrow": "કાલે પ્રયાસ કરો",
          "book your slot tomorrow because doctor is not available":
              "કાલે તમારો સ્લોટ બુક કરો કારણ કે ડૉક્ટર ઉપલબ્ધ નથી",
          "ok": "બરાબર",
          "your appointment has been booked successfully":
              "તમારી એપોઇન્ટમેન્ટ સફળતાપૂર્વક બુક કરવામાં આવી છે.",
          "book your appointment": "તમારી એપોઇન્ટમેન્ટ બુક કરો",
          "choose your appointment date": "તમારી મુલાકાતની તારીખ પસંદ કરો",
          "morning": "સવાર",
          "afternoon": "બપોર",
          "evening": "સાંજ",
          "book now": "હમણાં જ બુક કરો",
          "health package": "આરોગ્ય પેકેજ",
          "select your symptom": "તમારું રોગલક્ષણ પસંદ કરો",
          "anxiety": "ચિંતા",
          "fever": "તાવ",
          "cough": "ઉધરસ",
          "cold": "ઠંડી",
          "chest pain": "છાતીનો દુખાવો",
          "headache": "માથાનો દુખાવો",
          "depression": "હતાશા",
          "hairfall": "વાળ ખરવા",
          "diabetes": "ડાયાબિટીસ",
          "injury": "ઈજા",
          "choose doctor": "ડૉક્ટર પસંદ કરો",
        },
        'en': {
          "choose language": "Choose Language",
          "profile": "Profile",
          "edit profile": "Edit Profile",
          "change password": "Change Password",
          "bookmarks": "Bookmarks",
          "change language": "Change Language",
          "app settings": "App Settings",
          "logout": "Logout",
          "change profile photo": "Change Profile Photo",
          "username": "Username",
          "email": "Email",
          "contact no": "Contact no.",
          "save changes": "Save Changes",
          "current password": "Current Password",
          "type current password here": "Type Current Password Here",
          "new password": "New Password",
          "type new password here": "Type New Password Here",
          "confirm new password": "Confirm New Password",
          "type confirm new password here": "Type Confirm New Password Here",
          "update password": "Update Password",
          "details": "Details",
          "call": "call",
          "chat": "Chat",
          "month": " / month",
          "govt. charges": "+ Govt. Charges",
          "description": "Description",
          "published on": "Published On",
          "sales enquiries": "Sales Enquiries",
          "app settings screen": "App Settings Screen",
          "display": "Display",
          "dark mode": "Dark Mode",
          "display mode": "Display Mode",
          "choose how your flutter ui kit experience looks for this device...":
              "Choose how your Flutter UI Kit experience looks for this device...",
          "device settings": "Device Settings",
          "light mode": "Light Mode",
          "if you choose device settings, this app will use the mode that's already selected in this device's settings.":
              "If you choose Device settings, this app will use the mode that's already selected in this device's settings.",
          "what are looking for?": "What are \nlooking for?",
          "current location": "Current location",
          "house": "House",
          "flats / apartments": "Flats / Apartments",
          "residential": "Residential",
          "commercial": "Commercial",
          "2000+ results": "2000+ results",
          "5000+ results": "5000+ results",
          "1000+ results": "1000+ results",
          "recommend for you": "Recommend For You",
          "home": "Home",
          "location": "Location",
          "search location": "Search Location",
          "chats": "Chats",
          "search by name": "Search by name",
          "search by street/area/city": "Search by street/area/city",
          "use my current location": "Use my current location",
          "recent searches": "RECENT SEARCHES",
          "view more": "View more",
          "type message here": "Type message here",
          "are you sure want to logout ?": "Are you sure want to logout ?",
          "no": "No",
          "yes": "Yes",
          "delete message": "Delete message",
          "are you sure want to delete this message from chat ?":
              "Are you sure want to delete this message from chat ?",
          "cancel": "Cancel",
          "bed": "Bed",
          "bath": "Bath",
          "sqft": "SQ. FT.",
          "settings": "Settings",
          "change theme": "Change theme",
          "name": "Name",
          "date of birth": "Date of Birth",
          "update": "Update",
          "profile updated successfully.": "Profile updated successfully.",
          "password changed successfully.": "Password changed successfully.",
          "notification": "Notification",
          "hello": "Hello,",
          "book": "Book",
          "my appointment": "my appointment",
          "video": "Video",
          "consultation": "consultation",
          "packages": "Packages",
          "buy now": "Buy Now",
          "articles": "Articles",
          "choose where you want to select the image":
              "Choose where you want to select the image",
          "camera": "Camera",
          "gallery": "Gallery",
          "knee pain": "Knee pain",
          "doctors": "Doctors",
          "available for today": "Available for today",
          "try to tomorrow": "Try to tomorrow",
          "book your slot tomorrow because doctor is not available":
              "Book your slot tomorrow because doctor is not available",
          "ok": "Ok",
          "your appointment has been booked successfully":
              "Your appointment has been booked successfully.",
          "book your appointment": "Book your appointment",
          "choose your appointment date": "Choose your appointment date",
          "morning": "Morning",
          "afternoon": "Afternoon",
          "evening": "Evening",
          "book now": "BOOK NOW",
          "health package": "Health Package",
          "select your symptom": "Select your symptom",
          "anxiety": "Anxiety",
          "fever": "Fever",
          "cough": "Cough",
          "cold": "Cold",
          "chest pain": "Chest pain",
          "headache": "Headache",
          "depression": "Depression",
          "hairfall": "Hairfall",
          "diabetes": "Diabetes",
          "injury": "Injury",
          "choose doctor": "Choose doctor",
        },
        'he': {
          "choose language": "בחר שפה",
          "profile": "פּרוֹפִיל",
          "edit profile": "ערוך פרופיל",
          "change password": "שנה סיסמא",
          "bookmarks": "סימניות",
          "change language": "שנה שפה",
          "app settings": "הגדרות אפליקציה",
          "logout": "להתנתק",
          "change profile photo": "שנה תמונת פרופיל",
          "username": "שם משתמש",
          "email": "אימייל",
          "contact no": "מס' איש קשר.",
          "save changes": "שמור שינויים",
          "current password": "סיסמה נוכחית",
          "type current password here": "הקלד את הסיסמה הנוכחית כאן",
          "new password": "סיסמה חדשה",
          "type new password here": "הקלד סיסמה חדשה כאן",
          "confirm new password": "תאשר סיסמא חדשה",
          "type confirm new password here": "הקלד אשר סיסמה חדשה כאן",
          "update password": "עדכן סיסמה",
          "details": "פרטים",
          "call": "שִׂיחָה",
          "chat": "לְשׂוֹחֵחַ",
          "month": " / חודש",
          "govt. charges": "+ הממשלה חיובים",
          "description": "תיאור",
          "published on": "פורסם ב",
          "sales enquiries": "פניות מכירות",
          "app settings screen": "מסך הגדרות אפליקציה",
          "display": "לְהַצִיג",
          "dark mode": "מצב כהה",
          "display mode": "מצב תצוגה",
          "choose how your flutter ui kit experience looks for this device...":
              "בחר כיצד נראית חוויית ערכת ה-fladder ui שלך עבור המכשיר הזה...",
          "device settings": "הגדרות מכשיר",
          "light mode": "מצב אור",
          "if you choose device settings, this app will use the mode that's already selected in this device's settings.":
              "אם תבחר בהגדרות מכשיר, אפליקציה זו תשתמש במצב שכבר נבחר בהגדרות של מכשיר זה.",
          "what are looking for?": "מה מחפשים",
          "current location": "מיקום נוכחי",
          "house": "בַּיִת",
          "flats / apartments": "דירות / דירות",
          "residential": "מגורים",
          "commercial": "מִסְחָרִי",
          "2000+ results": "2000+ תוצאות",
          "5000+ results": "5000+ תוצאות",
          "1000+ results": "1000+ תוצאות",
          "recommend for you": "ממליץ בשבילך",
          "home": "בית",
          "location": "מקום",
          "search location": "חיפוש מיקום",
          "chats": "צ'אטים",
          "search by name": "חפש לפי שם",
          "search by street/area/city": "חפש לפי רחוב/אזור/עיר",
          "use my current location": "השתמש במיקום הנוכחי שלי",
          "recent searches": "חיפושים אחרונים",
          "view more": "ראה עוד",
          "type message here": "הקלד הודעה כאן",
          "are you sure want to logout ?": "האם אתה בטוח רוצה להתנתק?",
          "no": "לא",
          "yes": "כן",
          "delete message": "למחוק הודעה",
          "are you sure want to delete this message from chat ?":
              "האם אתה בטוח שברצונך למחוק הודעה זו מהצ'אט?",
          "cancel": "לְבַטֵל",
          "bed": "מיטה",
          "bath": "מֶרחָץ",
          "sqft": "רגל רבוע",
          "settings": "הגדרות",
          "change theme": "לשנות נושא",
          "name": "שֵׁם",
          "date of birth": "תאריך לידה",
          "update": "עדכון",
          "profile updated successfully.": "הפרופיל עודכן בהצלחה.",
          "password changed successfully.": "סיסמה שונתה בהצלחה.",
          "notification": "הוֹדָעָה",
          "hello": "שלום,",
          "book": "הזמנה",
          "my appointment": "הפגישה שלי",
          "video": "וִידֵאוֹ",
          "consultation": "יִעוּץ",
          "packages": "חבילות",
          "buy now": "קנה עכשיו",
          "articles": "מאמרים",
          "choose where you want to select the image":
              "בחר היכן ברצונך לבחור את התמונה",
          "camera": "מַצלֵמָה",
          "gallery": "גלריה",
          "knee pain": "כאבי ברכיים",
          "doctors": "רופאים",
          "available for today": "זמין להיום",
          "try to tomorrow": "לנסות למחר",
          "book your slot tomorrow because doctor is not available":
              "הזמן את המשבצת שלך מחר כי הרופא אינו זמין",
          "ok": "בסדר",
          "your appointment has been booked successfully":
              "הפגישה שלך הוזמנה בהצלחה.",
          "book your appointment": "הזמינו פגישה",
          "choose your appointment date": "בחר את תאריך הפגישה שלך",
          "morning": "בוקר",
          "afternoon": "אחרי הצהריים",
          "evening": "עֶרֶב",
          "book now": "להזמין עכשיו",
          "health package": "חבילת בריאות",
          "select your symptom": "בחר את הסימפטום שלך",
          "anxiety": "חֲרָדָה",
          "fever": "חום",
          "cough": "לְהִשְׁתַעֵל",
          "cold": "קַר",
          "chest pain": "כאב בחזה",
          "headache": "כְּאֵב רֹאשׁ",
          "depression": "דִכָּאוֹן",
          "hairfall": "נשירת שיער",
          "diabetes": "סוכרת",
          "injury": "פציעה",
          "choose doctor": "בחר רופא",
        },
        'ar': {
          "choose language": "اختر اللغة",
          "profile": "حساب تعريفي",
          "edit profile": "تعديل الملف الشخصي",
          "change password": "تغيير كلمة المرور",
          "bookmarks": "إشارات مرجعية",
          "change language": "تغيير اللغة",
          "app settings": "إعدادات التطبيقات",
          "logout": "تسجيل خروج",
          "change profile photo": "تغيير صورة الملف الشخصي",
          "username": "اسم المستخدم",
          "email": "بريد إلكتروني",
          "contact no": "رقم الاتصال.",
          "save changes": "حفظ التغييرات",
          "current password": "كلمة السر الحالية",
          "type current password here": "اكتب كلمة المرور الحالية هنا",
          "new password": "كلمة المرور الجديدة",
          "type new password here": "اكتب كلمة المرور الجديدة هنا",
          "confirm new password": "تأكيد كلمة المرور الجديدة",
          "type confirm new password here":
              "اكتب تأكيد كلمة المرور الجديدة هنا",
          "update password": "تطوير كلمة السر",
          "details": "تفاصيل",
          "call": "يتصل",
          "chat": "محادثة",
          "month": " / شهر",
          "govt. charges": "+ الحكومة. رسوم",
          "description": "وصف",
          "published on": "تم النشر بتاريخ",
          "sales enquiries": "استفسارات المبيعات",
          "app settings screen": "شاشة إعدادات التطبيق",
          "display": "عرض",
          "dark mode": "الوضع المظلم",
          "display mode": "وضع العرض",
          "choose how your flutter ui kit experience looks for this device...":
              "اختر كيف تبدو تجربة Flutter UI Kit لهذا الجهاز...",
          "device settings": "إعدادات الجهاز",
          "light mode": "وضع الضوء",
          "if you choose device settings, this app will use the mode that's already selected in this device's settings.":
              "إذا اخترت إعدادات الجهاز، فسيستخدم هذا التطبيق الوضع الذي تم تحديده بالفعل في إعدادات هذا الجهاز.",
          "what are looking for?": "عن ماذا تبحث؟",
          "current location": "الموقع الحالي",
          "house": "منزل",
          "flats / apartments": "شقق / شقق",
          "residential": "سكني",
          "commercial": "تجاري",
          "2000+ results": "أكثر من 2000 نتيجة",
          "5000+ results": "أكثر من 5000 نتيجة",
          "1000+ results": "أكثر من 1000 نتيجة",
          "recommend for you": "يوصي لك",
          "home": "بيت",
          "location": "موقع",
          "search location": "موقع البحث",
          "chats": "الدردشات",
          "search by name": "البحث عن طريق الإسم",
          "search by street/area/city":
              "البحث عن طريق الشارع / المنطقة / المدينة",
          "use my current location": "استخدام موقعي الحالي",
          "recent searches": "عمليات البحث الأخيرة",
          "view more": "عرض المزيد",
          "type message here": "اكتب الرسالة هنا",
          "are you sure want to logout ?":
              "هل أنت متأكد أنك تريد تسجيل الخروج؟",
          "no": "لا",
          "yes": "نعم",
          "delete message": "حذف رسالة",
          "are you sure want to delete this message from chat ?":
              "هل أنت متأكد أنك تريد حذف هذه الرسالة من الدردشة؟",
          "cancel": "يلغي",
          "bed": "سرير",
          "bath": "حمام",
          "sqft": "قدم مربع",
          "settings": "إعدادات",
          "change theme": "غير الخلفية",
          "name": "اسم",
          "date of birth": "تاريخ الميلاد",
          "update": "تحديث",
          "profile updated successfully.": "تم تحديث الملف الشخصي بنجاح.",
          "password changed successfully.": "تم تغيير الرقم السري بنجاح.",
          "notification": "إشعار",
          "hello": "مرحبًا،",
          "book": "الحجز",
          "my appointment": "تعييني",
          "video": "فيديو",
          "consultation": "التشاور",
          "packages": "الحزم",
          "buy now": "קנה עכשיו",
          "articles": "مقالات",
          "choose where you want to select the image":
              "اختر المكان الذي تريد تحديد الصورة فيه",
          "camera": "آلة تصوير",
          "gallery": "صالة عرض",
          "knee pain": "ألم الركبة",
          "doctors": "الأطباء",
          "available for today": "متاح لهذا اليوم",
          "try to tomorrow": "حاول غدا",
          "book your slot tomorrow because doctor is not available":
              "احجز مكانك غدًا لأن الطبيب غير متوفر",
          "ok": "نعم",
          "your appointment has been booked successfully":
              "لقد تم حجز موعدك بنجاح.",
          "book your appointment": "احجز موعدك",
          "choose your appointment date": "اختر تاريخ موعدك",
          "morning": "صباح",
          "afternoon": "بعد الظهر",
          "evening": "مساء",
          "book now": "احجز الآن",
          "health package": "الحزمة الصحية",
          "select your symptom": "حدد الأعراض الخاصة بك",
          "anxiety": "قلق",
          "fever": "حمى",
          "cough": "سعال",
          "cold": "بارد",
          "chest pain": "ألم صدر",
          "headache": "صداع",
          "depression": "اكتئاب",
          "hairfall": "تساقط الشعر",
          "diabetes": "السكري",
          "injury": "إصابة",
          "choose doctor": "اختر الطبيب",
        }
      };
}
