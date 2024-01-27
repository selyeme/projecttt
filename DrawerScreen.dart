import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:share/share.dart';
import 'package:sounds/screens/SavePage.dart';
import 'package:sounds/screens/home.dart';
import 'package:sounds/screens/inside_CEV.dart';
import 'package:sounds/screens/other.dart';
import 'package:sounds/screens/policey.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:url_launcher/url_launcher.dart';


enum SocialMedia{facebook,twitter,instagram,youtube,web,telegram,whatsapp}

var DrawerKey=GlobalKey<ZoomDrawerState>();
class Drawerscreen extends StatefulWidget {

  const Drawerscreen({super.key});

  @override
  State<Drawerscreen> createState() => _DrawerscreenState();
}

class _DrawerscreenState extends State<Drawerscreen> {




  @override
  Widget build(BuildContext context) {
    return Drawer(
key: DrawerKey,
      width: 230,
      child: Directionality(
        textDirection: TextDirection.rtl,

          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors:[
                    Color(0xf001423f),
                    Color(0xf05dc2bf),
                  ]
              )
            ),
            child: ListView(

padding: EdgeInsets.zero,

              children: [


                Container(

                  width: 50,
                  height: 240,


                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20), ),
                    color: Colors.white70,

image: DecorationImage(image: AssetImage("assets/Images/1705334977126.png"),fit: BoxFit.cover,),

                  ),



                ),








                ListTile(

                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (_) => Settings()));
                  },
                  leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Image.asset(
                        'assets/Images/3079106.png',
                        width: 10,
                        height: 5,
                        color: Colors.white,
                      )),
                  title: Row(
                    children: [
                      const Text(
                        'السيرة الذاتية للشيخ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,fontSize: 13
                        ),
                      ),
                    ],
                  ),
                ),

                ListTile(
                  onTap: () {




                    showDialog(
                      context: context,
                      builder: (context) =>AlertDialog(
                        backgroundColor: Colors.white,


                        title: Center(
                          child: Column(
                            children: [
                              Row(
                                children: [

                                     Container(

                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 60),
                                            child: Text("التواصل الاجتماعي",style: TextStyle(color: Color(
                                                0xf01c0f01),fontSize: 15),),
                                          ),
                                        ),




                                ],

                              ),
SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Container(
                                    child: InkWell(
                                      onTap:() async{

                                    var whatsappUrl="https://chat.whatsapp.com/J4q7W7DoafK7WIBdRGJtSM";
                                    await canLaunch(
                                        whatsappUrl,
                                    );
                                    launch(whatsappUrl);
                                      },
                                      child: Image.asset("assets/Images/733641.png",width: 30,height: 30,color:  Color(
                                          0xf01c0f01),),
                                    ),
                                  ),

                                   InkWell(
                                     onTap:() async{
                                       var TelegramappUrl="https://t.me/FuadTholaia";
                                       await canLaunch(
                                         TelegramappUrl,
                                       );
                                       launch(TelegramappUrl);
                                     },
                                      child: Container(
                                        child: Image.asset("assets/Images/2111710.png",width: 30,height: 30,color:  Color(
                                            0xf01c0f01),),
                                      ),
                                    ),

                                  InkWell(
                                    onTap:() async{
                                      var youtubappUrl="https://youtube.com/channel/UCJvDeUYvZSdens3JYzLHlMA";
                                      await canLaunch(
                                        youtubappUrl,
                                      );
                                      launch(youtubappUrl);
                                    },
                                    child: Container(
                                      child: Image.asset("assets/Images/3669688.png",width: 30,height: 30,color:  Color(
                                          0xf01c0f01),),
                                    ),
                                  ),
                                  InkWell(
                                    onTap:()async{
                                      var TiwitterappUrl="https://twitter.com/Fouad_AlThulai?t=rrb5YTwgUQxFarXU8EzG2w&s=09";
                                      await canLaunch(
                                      TiwitterappUrl,
                                      );
                                      launch(TiwitterappUrl);
                                    },
                                    child: Container(
                                      child: Image.asset("assets/Images/25347.png",width: 30,height: 30,color:  Color(
                                          0xf01c0f01),),
                                    ),
                                  ),
                                  InkWell(
                                    onTap:()async{
                                      var webrappUrl="https://altholaia.al3ilm.net/";
                                      await canLaunch(
                                      webrappUrl,
                                      );
                                      launch(webrappUrl);
                                    },
                                    child: Container(
                                      child: Image.asset("assets/Images/4305021.png",width: 30,height: 30,color:  Color(
                                          0xf01c0f01),),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ),







                      ),

                    );
                    Padding(padding:const EdgeInsets.all(5.0),
                      child: Row(

                          children: [
                            Stack(

                              children: [

                                SizedBox(
                                  height: 88.0,
                                  width: 8.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                SizedBox(
                                  height: 80.0,
                                  width: 80.0,
                                  child: Icon(
                                    Icons.play_circle_filled,
                                    color: Color(0xFF0C4627),
                                    size: 42.0,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    );

                  },
                  leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Image.asset(
                        'assets/Images/6319801.png',
                        width: 10,
                        height: 5,
                        color: Colors.white,
                      )),
                  title: Row(
                    children: [
                      const Text(
                        'الحسابات الرسمية للشيخ',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 11.8),
                      ),
                    ],
                  ),
                ),
                ListTile(

                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) =>AlertDialog(
                        backgroundColor: Colors.white,


                        title: Center(
                          child: Column(
                            children: [
                              Row(
                                children: [

                                  Container(

                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 60),
                                      child: Text("التواصل الاجتماعي",style: TextStyle(color: Color(
                                          0xf01c0f01),fontSize: 15),),
                                    ),
                                  ),




                                ],

                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Container(
                                    child: InkWell(

                                      child: Image.asset("assets/Images/733641.png",width: 30,height: 30,color:  Color(
                                          0xf01c0f01),),
                                    ),
                                  ),
                                  InkWell(
                                    onTap:() async{
                                      var TelegramappUrl="https://t.me/Sel_paris";
                                      await canLaunch(
                                        TelegramappUrl,
                                      );
                                      launch(TelegramappUrl);
                                    },
                                    child: Container(
                                      child: Image.asset("assets/Images/2111710.png",width: 30,height: 30,color:  Color(
                                          0xf01c0f01),),
                                    ),
                                  ),

                                  InkWell(
                                    onTap:() async{
                                      var FaceboUrl="https://www.facebook.com/profile.php?id=100044901346006";
                                      await canLaunch(
                                        FaceboUrl,
                                      );
                                      launch(FaceboUrl);
                                    },
                                    child: Container(
                                      child: Image.asset("assets/Images/1384005.png",width: 30,height: 30,color:  Color(
                                          0xf01c0f01),),
                                    ),
                                  ),
                                  InkWell(
                                    onTap:() async{
                                      var InstgramUrl="https://www.instagram.com/selparis_00?igsh=MXVtNXEwd2VsZmJxNA==";
                                      await canLaunch(
                                        InstgramUrl,
                                      );
                                      launch(InstgramUrl);
                                    },
                                    child: Container(
                                      child: Image.asset("assets/Images/1384015.png",width: 30,height: 30,color:  Color(
                                          0xf01c0f01),),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ),







                      ),

                    );
                  },
                  leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Image.asset(
                        'assets/Images/8103433.png',
                        width: 5,
                        height: 2,
                        color:Colors.white,
                      )),
                  title:

                     Row(

                      children: [

                        const Text(
                          'للتواصل مع المبرمج',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 13),
                        ),
                      ],
                    ),
                  ),


                ListTile(
                  onTap: () {
                    Share.share("https://play.google.com/store/apps/details?id=com.instructiveteh.testapp");
                  },
                  leading: const SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        CupertinoIcons.share,
                        color:Colors.white,
                      )),
                  title: const Text(
                    'مشاركة التطبيق',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 14),
                  ),
                ),
                ListTile(
                  onTap: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (_) => SavePage(favoritesongs: favoritesongs)));
                  },
                  leading: const SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                       Icons.favorite,
                        color:Colors.white,
                      )),
                  title: const Text(
                    'المفضلة',
                    style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white,fontSize: 14),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (_) => policy()));
                  },
                  leading: const SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        CupertinoIcons.create,
                        color:Colors.white,
                      )),
                  title: const Text(
                    'سياسة الخصوصية',
                    style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white,fontSize: 14),
                  ),
                ),
                ListTile(
                  onTap: () {
                    StoreRedirect.redirect(
                      androidAppId: 'com.zhiliaoapp.musically',
                      iOSAppId: '835599320',
                    );
                  },
                  leading: const SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        CupertinoIcons.star,
                        color:Colors.white,
                      )),
                  title: const Text(
                    'تقييم التطبيق ',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 14),
                  ),
                ),



                ListTile(

                  onTap: () {
showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Text ("هل تريد الخروج؟",style: TextStyle(fontSize: 20,color: Color(
              0xf01c0f01)),),
        ),
        actions: [
          TextButton(
              onPressed: (){
                Navigator.of(context).pop(false);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text("لا",style:TextStyle(fontSize: 15,color:Color(0xf01c0f01)) ,),
              ),
          ),
          TextButton(
            onPressed: (){
              Navigator.of(context).pop(true);
            },
            child: Text("نعم",style:TextStyle(fontSize: 15,color:Color(0xf01c0f01)) ,),
          ),
        ],
      );
    },
).then((result) {
  if(result==true){
    SystemNavigator.pop();
  }
});

                  },
                  leading: const SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        CupertinoIcons.square_arrow_right,
                        color: Colors.white,
                      )),
                  title: const Text(
                    'خروج ',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 14),
                  ),
                ),

              ],
            ),
          ),
        ),

    );
  }
}
