import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sounds/Detailpage.dart';
import 'package:sounds/components/custom_list_view.dart';
import 'package:sounds/model/Musics.dart';
import 'package:sounds/screens/DrawerScreen.dart';
import 'package:sounds/screens/selss.dart';

class lettts extends StatefulWidget {
  const lettts({super.key});

  @override
  State<lettts> createState() => _letttsState();
}

class _letttsState extends State<lettts> {
  late List<Musics> musics;
  final AudioPlayer audioPlayer = AudioPlayer();
  final TextEditingController searchcontroller=TextEditingController();


  static List<Musics> getMusicsList=  [
      Musics(
        title: "إنـهُ الـنـعـمـةُ العظمى",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/1.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أتدري لماذا تصلي؟",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/2.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أجمل وصية أب",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/3.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أرقى الأماني ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/4.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أزمـة هـي سبب لكل أزمـة",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/5.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "الأخوة قوة",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/16.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "الأوائل في مدرسة الأوائل",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/17.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "الجوع",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/18.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "الحياة ليست للتجارب",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/19.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "النقله متحتمه",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/20.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "مولعي  في أيام كورونا",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/14.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "اليمن",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/21.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أما لك سر عندالله",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/7.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أمنيات الأموات",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/8.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أموات أحياهم الله  ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/9.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "انتحارات عصرية",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/22.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "إنه رسول الله",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/15.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أهكذا كان شباب الإسلام",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/10.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أيها العالم المصدوم",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/11.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أيها الفقير إلى الله",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/12.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "أيها المنقطع",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/13.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "تأملات",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/23.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "تخيل",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/24.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "تــدهــورالــعمـلـة",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/26.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "تصورت وأنت",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/25.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "تنبيهـاتٌ أُسرية_",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/27.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "ثبات في الحياة  ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/28.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "جثث لم تأكلها القبور",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/29.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "جشع المال فساد المئال",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/30.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "حاجات مقضية",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/31.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "حذاري حذار   ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/32.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "حسد يرى بحياة الورى",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/33.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "الكريسمس",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/34.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "ماهو عيب عليك",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/35.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "عيون الناس ما ترحم",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/36.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "خطايا وعصيان",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/37.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "تغلو_الديار_وترخص",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/38.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "فراق الحياة",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/39.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "محادثات مع أهل جهنم",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/40.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "لعلي لا ألقاكم",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/41.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "ياشاكياً قلة التوفيق",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/42.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "دموع على خدود",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/43.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "زوال السرور بداء الغرور",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/44.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "سبب الخرف وكيف العلاج",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/45.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "سلم الوصول ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/46.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "سموم الحياة",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/47.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "شاشات وخراب العلاقات",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/48.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "شايف نفسه",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/49.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "صيانة الجوالات ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/50.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "ضاعت الفرصة",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/51.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "عادات في الأفراح النسائية",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/52.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "عيون الناس ما ترحم",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/53.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "فروق رمضانية",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/54.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "فواجع المستقبل",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/55.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "قبول التواب  ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/56.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "قصة قاضي الجن",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/57.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "كأس العالم",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/58.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "كدار له بابان",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/59.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "كروب لها علام الغيوب",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/60.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "كم هو جميل",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/61.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "كيف تنال رحمه الله",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/62.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: " أهل الشكاء والبكاء",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/63.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "لا تيأس عبدالله",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/64.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "لماذا دخلوا جهنم",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/65.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "ماأقصر ساعاتها",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/66.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "ماهي التركة",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/67.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "الحياةإبتلاء",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/68.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "مراسلات بين البنات",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/69.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "مستشفى الأرواح",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/70.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "معالجات رمضانية",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/71.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "معاناة مجتمعية ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/72.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "  قبل فوات الأوان",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/73.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "نهاية العالم",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/74.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "هدية لعشاق الكره",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/75.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "هل كتبت الوصية؟",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/76.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "هموم وأحزان",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/77.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "وختامه مسك",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/78.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "وصايا عند المنايا",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/79.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "يا أمة الإسلام هل؟",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/80.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "يا خسارة من عده تنازلي",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/81.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "عجائب قدرته لا تخفاكا",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/82.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "يامن عصيت الله",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/83.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "يوم تأتي كل نفس",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/84.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "عنده ما يضيع",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/85.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "اشرس معركة",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/86.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "افراح الاخرة",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/87.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "اول نعمة ثم ثانيها ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/88.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "احراجات ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/89.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "ايقاظ العالية  ",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/90.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "جهالات عصرية",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/91.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "شاشات وخراب العلاقات",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/92.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "ذكريات",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/93.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "كم من مفسد لحياته",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/94.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "موالدات ايمانية",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/95.m4a",
        subtitle:"الخطب",
      ),

    ];


  void initState() {
    musics = getMusicsList;
    super.initState();

  }

  void filterSongs(String query){
    musics=getMusicsList.where((music) =>music.title.toLowerCase().contains(query.toLowerCase()) ).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body:
          Column(
            children: [
              Container(

                width: 500,
                height: MediaQuery.of(context).size.height /2.2,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,

                  image: DecorationImage(image: AssetImage("assets/Images/oooo.jpg"),fit: BoxFit.cover,),

                ),

    child: Row(
          children: [
          Stack(
          children: [
              Padding(
              padding: const EdgeInsets.only(bottom: 170,right: 20),
        child: Container(
          width: 240,
          height: 50,
          decoration: BoxDecoration(


            borderRadius: BorderRadius.circular(30),
            color: Color(
                0xf02a1705).withOpacity(0.10),



          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller:  searchcontroller,
            onChanged: (query) => filterSongs(query),
            decoration: InputDecoration(

              filled: true,
              fillColor: Color(
                  0xf01e0f00).withOpacity(0.10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Icon(Icons.search,color: Colors.white.withOpacity(0.10),size: 30,),
              prefixIconColor: Colors.white,
            ),
          ),

        ),
      ),

      Container(
        child:   Padding(
          padding: const EdgeInsets.only(right: 330,bottom: 170),
          child: Container(

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              color:Color(
                  0xf01e0f00).withOpacity(0.11),


            ),

            child:   InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_drop_down,color: Colors.white.withOpacity(0.10),size: 50,)),
          ),


        ),
      ),


      Padding(
        padding: const EdgeInsets.only(right: 30,top: 70),
        child: Container(
          child: Text("الخطب",style: TextStyle(color: Colors.white,fontSize: 30),),
        ),
      ),


      ],

    ),

    ],
    ),


    ),


              SizedBox(height: 20,),
              Expanded(

                child: Container(

                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    // decoration: BoxDecoration(
                    //     gradient: LinearGradient(
                    //         colors:[
                    //           Color(0xff027dfd),
                    //           Color(0xff4100E0),
                    //         ]
                    //     ),
                    //
                    // ),
                    child:  Stack(
                      children: [
                        Column(

                          children: [
                            Container(
                              child: Row(

                                children: [

                                  Container(

                                    padding: EdgeInsets.only(right: 50),
                                    child: Text("الاكثر استماعا",style: TextStyle(fontSize: 17,color:Color(
                                        0xf01e0f00),),),
                                  ),
                                  Container(

                                    padding: EdgeInsets.only(right: 170),
                                    child: Text("عرض الكل",style: TextStyle(fontSize: 15,color:Color(
                                        0xf01e0f00)),),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              child: ListView.builder(
                                itemCount: musics.length,
                                itemBuilder: (context, index) => customListView(
                                  onTap: () async {
                                    // /////////////////////////////////////
                                    // /////////////////////////////////////
                                    // /////////////////////////////////////

                                    void _OpenIconButtonPressed(){
                                      showModalBottomSheet(context: context, builder: (ctx) => ssee( mMusic: musics[index],
                                        audioPlayer: audioPlayer,
                                        playlist: musics,));
                                    }
                                    _OpenIconButtonPressed();
                                    await audioPlayer.setAsset(musics[index].url);


                                    await audioPlayer.play();

                                    // /////////////////////////////////////
                                    // /////////////////////////////////////
                                    // /////////////////////////////////////
                                  },
                                  title: musics[index].title,
                                  image: musics[index].image,
                                  subtitle: musics[index].subtitle,
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),

                  ),
                ),

              ),
            ],


          ),

drawer: Drawerscreen(),
    ),

    );
  }
}
