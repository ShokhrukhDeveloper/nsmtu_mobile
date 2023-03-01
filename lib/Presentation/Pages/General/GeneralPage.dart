import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/FooterWidget/FooterAboutUsWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/FooterWidget/FooterWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/TopBarWidget/TopBarWidget.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({Key? key}) : super(key: key);

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TopBar(),
              Container(
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12)
                ),
                height:40,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Talabalarga"),
                    SizedBox(width: 5,),
                    Icon(Icons.keyboard_double_arrow_right_outlined),
                    SizedBox(width: 5,),
                    Flexible(child: Text("NDKTUda ta'lim portali NDKTUda ta'lim portali",overflow: TextOverflow.ellipsis,)),
                  ],
                ),
              ),
              Html(data: ht),
              const FooterWidget()
            ],
          ),
          ),
        ),
      ),


    );
  }
}

var ht="""
<p><img title=\"photo_2021-07-05_10-26-02.jpg\" src=\"http://admin.nsmtu.uz/public/public/uploads/1755639944801303.jpg\" alt=\"\" width=\"900\" height=\"557\" /></p>\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; Hurmatli abituriyentlar!</strong>&nbsp;Sizlar test sinovlarini muvaffaqiyatli topshirishingiz uchun test sinovlarni o&lsquo;tkazish tartib-qoidalarini, test jarayonida o&lsquo;zingizning vazifalaringiz, majburiyatlaringiz va huquqlaringizni aniq bilishingiz va test sinovlarini o&lsquo;tkazish tartibiga rioya qilishingiz talab etiladi.</p>\r\n<p>Abituriyentlar test sinovlari o&lsquo;tkaziladigan kuni bino hududiga soat 8.00 gacha, auditoriyaga soat 8.30 gacha faqat abituriyent ruxsatnomasi va pasporti bilan kiritiladi. Test sinovlari boshlangan (soat 8.30)dan keyin abituriyent auditoriyaga kiritilmaydi.</p>\r\n<p>Soat 8.30 dan 9.00 gacha abituriyentlar javoblar varaqasini to&lsquo;g&lsquo;ri to&lsquo;ldirish tartibi bilan tanishadilar va uning tegishli joyiga o&lsquo;zlari to&lsquo;g&lsquo;risidagi ma&rsquo;lumotlarni yozadilar. Bu vaqt test o&lsquo;tkazish uchun ajratilgan vaqt me&rsquo;yoriga kirmaydi.</p>\r\n<p>Test boshlangandan keyin hech kim auditoriyaga kiritilmaydi va test topshiriqlari bo&lsquo;yicha abituriyentlar bilan savol-javob qilinmaydi.</p>\r\n<p>Abituriyentjavoblar varaqasi raqami bilan savollar kitobi raqamining bir-biriga mosligini va savollar kitobida fanlar bo&lsquo;yicha test savollarida tipografik xato yoki boshqa nuqsonlar yo&lsquo;qligini tekshiradi. Agar test savollarida nuqson bo&lsquo;lganda darhol bu haqda auditoriya rahbariga xabar beradi.</p>\r\n<p>Abituriyentjavoblar varaqasi berilgandan keyin abituriyent ruxsatnomasi va titul varaqasining tegishli joylariga javoblar varaqasi raqamini ko&lsquo;chirib yozadi. Shundan so&lsquo;ng, titul varaqasida ko&lsquo;rsatilgan ta&rsquo;lim muassasasining kodi, maxsus kod va tanlov kodini javoblar varaqasiga ko&lsquo;chirib yozadi va tegishli doirachalarni bo&lsquo;yaydi.</p>\r\n<p>Abituriyenttomonidan titul varaqasidan javoblar varaqasiga ko&lsquo;chirilgan ta&rsquo;lim muassasasi kodi, maxsus kod va tanlov kodini abituriyentning ta&rsquo;lim tili, ta&rsquo;lim yo&lsquo;nalishi, ta&rsquo;lim muassasasi, ijodiy va chet tili imtihonlari ballari hamda harbiy imtiyozini belgilovchi yagona ma&rsquo;lumot bo&lsquo;lganligi sababli, to&lsquo;ldirilmagan javoblar varaqasi bo&lsquo;yicha natija chiqarilmaydi va e&rsquo;tirozlar qabul qilinmaydi.</p>\r\n<p>Abituriyentjavoblar varaqasining 1-blokiga va savollar kitobi muqovasining belgilangan joyiga o&lsquo;zi haqidagi tegishli ma&rsquo;lumotlarni yozib, imzo qo&lsquo;yadi. Agar abituriyent tomonidan ushbu ma&rsquo;lumotlar kiritilmagan taqdirda, ixtiyoriy bosqichda dalolatnoma tuziladi va test sinovi bo&lsquo;yicha natija chiqarilmasligiga asos bo&lsquo;ladi.</p>\r\n<p>Savollar kitobidagi har bir fan 36 ta topshiriqni o&lsquo;z ichiga oladi.</p>\r\n<p>Abituriyentga test topshiriqlarini bajarish uchun quyidagi vaqt me&rsquo;yorlari belgilanadi:</p>\r\n<p>108 savolga &mdash; 3 soat.</p>\r\n<p>Har bir savolga 4 tadan (&laquo;A&raquo;, &laquo;B&raquo;, &laquo;C&raquo;, &laquo;D&raquo;) javoblar varianti berilgan bo&lsquo;lib, abituriyent ulardan faqat bittasini savollar kitobchasida belgilashi (savollar kitobida belgilangan javoblarni o&lsquo;zgartirish mumkin), keyinchalik javoblar varaqasining mos fan blokidagi doirachani belgilangan tartibda bo&lsquo;yashi kerak (javoblar varaqasida belgilangan javoblarni o&lsquo;zgartirish mumkin emas).</p>\r\n<p>Har bir test savoliga faqat bitta javob belgilanishi shart. Agar javoblar varaqasidagi &laquo;Belgilash uchun namuna&raquo; qoidasiga rioya etilmasa, jumladan bitta savolga javoblar varaqasida tegishli doiracha bo&lsquo;yalmasa yoki ikki va undan ortiq doiracha bo&lsquo;yalsa yoxud to&lsquo;liq bo&lsquo;yalmasa ushbu javobga ball berilmaydi.</p>\r\n<p>To&lsquo;ldirilgan javoblar varaqasi abituriyentning bilim darajasini belgilovchi asosiy hujjat hisoblanadi.</p>\r\n<p>Javoblar varaqasi abituriyent tomonidan havo rang pastali sharikli ruchka bilan to&lsquo;ldiriladi.</p>\r\n<p><strong>Javoblar varaqasi to&lsquo;g&lsquo;ri to&lsquo;ldirilishi uchun abituriyent shaxsan javobgardir. Javoblar varaqasidagi tegishli doirachalarni noto&lsquo;g&lsquo;ri belgilagan abituriyentlarning e&rsquo;tirozi ko&lsquo;rib chiqilmaydi.</strong></p>\r\n<p>Javoblar varaqasini to&lsquo;ldirishga test sinovi uchun belgilangan vaqt me&rsquo;yoriga qo&lsquo;shimcha 20 daqiqa ajratiladi.</p>\r\n<p>Abituriyenttomonidan uyali telefonlar va boshqa aloqa vositalarini olib kirish va foydalanish qat&rsquo;iy man etiladi.</p>\r\n<p><strong>Test sinovlari o&lsquo;tkaziladigan binoga kirishda abituriyent mikrokalkulyator, lug&lsquo;at, jadval, kitob, uyali telefon, kompyuter, telekommunikatsiya vositalari va shpargalkalar olib kirishga harakat qilsa yoki olib kirgan bo&lsquo;lsa, test sinovlari davomida test materiallarini boshqa abituriyentga uzatsa yoki yordam bersa, abituriyent test sinovlarini o&lsquo;tkazish tartibini buzgan hisoblanadi va Davlat test markazi vakili tomonidan dalolatnoma tuzilib, u test jarayonidan chetlashtiriladi*.</strong></p>\r\n<p>Izoh: O&lsquo;zbekiston Respublikasi Vazirlar Mahkamasining 2012 yil 11 iyuldagi 205-sonli qarorining 2-ilovasiga muvofiq O&lsquo;zbekiston Respublikasi Vazirlar Mahkamasining 2010 yil 18 iyundagi 118-sonli qarori bilan tasdiqlangan &ldquo;Oliy ta&rsquo;lim muassasalarining bakalavriatiga talabalarni qabul qilish tartibi to&lsquo;g&lsquo;risida Nizom&rdquo;ga yuqoridagi tahrirda o&lsquo;zgartirish kiritilgan.</p>\r\n<p>Abituriyentlar diqqat qiling! Avvallari test sinovlari o&lsquo;tkaziladigan binoga kirishda abituriyentda mikrokalkulyator, lug&lsquo;at, jadval, kitob, uyali telefon, kompyuter, telekommunikatsiya vositalari va shpargalkalar mavjudligi aniqlansa, ulardan bu vositalar olib qo&lsquo;yilgan va o&lsquo;zlari binoga kiritib yuborilgan. 2012 yildan boshlab test sinovlari o&lsquo;tkaziladigan binoga kirishda abituriyentda mikrokalkulyator, lug&lsquo;at, jadval, kitob, uyali telefon, kompyuter, telekommunikatsiya vositalari va shpargalkalar mavjudligi aniqlansa ular binoga kiritilmaydi va tegishli dalolatnoma tuzilib, test jarayonidan chetlashtiriladi.</p>\r\n<p>Test sinovi jarayonida abituriyent tomonidan savollar kitobi varag&lsquo;i yirtib olinganligi aniqlansa, test sinovlarini topshirish qoidalari buzilgan hisoblanadi va test sinovidan chetlashtiriladi.</p>\r\n<p>Belgilangan vaqtda test sinovlariga kelmagan abituriyentlar uchun qo&lsquo;shimcha test sinovlari o&lsquo;tkazilmaydi.</p>\r\n<p>Test sinovlarini topshirish vaqtida abituriyentning auditoriyadan chiqishi taqiqlanadi, auditoriyadan chiqqan abituriyentlar qaytadan test sinovlariga qo&lsquo;yilmaydi, sog&lsquo;lig&lsquo;ining yomonlashishi va boshqa shu kabi holatlarda test materiallarisiz qavat bo&lsquo;yicha vakil kuzatuvi ostida auditoriyadan chiqish hollari bundan mustasno.</p>\r\n<p>Auditoriya rahbari tomonidan testni bajarish uchun ajratilgan vaqt tugagani va savollar kitobidan javoblar varaqasining mos ravishda fan bloklaridagi doirachalarga bo&lsquo;yash uchun qo&lsquo;shimcha berilgan yigirma daqiqalik vaqt boshlanganligi e&rsquo;lon qilinganda abituriyent savollar kitobi bilan ishlashni to&lsquo;xtatib, savollar kitobidan javoblar varaqasining mos ravishda fan bloklaridagi doirachalarni bo&lsquo;yashni boshlashi, qo&lsquo;shimcha ajratilgan vaqt tugagani e&rsquo;lon qilinganda javoblar varaqasi bilan ishlashni to&lsquo;xtatishi shart.</p>\r\n<p>Abituriyenttest savollari yoki test sinovlarini o&lsquo;tkazish jarayoni yuzasidan e&rsquo;tirozlari mavjud bo&lsquo;lganda, test materiallarini topshirganidan so&lsquo;ng, shu kunning o&lsquo;zida qabul komissiyasi, Davlat test markazining ta&rsquo;lim muassasasi yoki bino bo&lsquo;yicha vakili orqali Davlat test markaziga ariza bilan murojaat qilishi mumkin.</p>\r\n<p>Fuqarolar quyidagi telefon raqamlari orqali &ldquo;Call-center&rdquo; bilan bog&lsquo;lanib, o&lsquo;zlarini qiziqtirgan savollariga javob olishlari mumkin.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>

""";
