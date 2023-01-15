import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/second.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with WidgetsBindingObserver{

  List list = [
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
    "apple",
    "banana",
    "orange",
  ];
  Future calllback(BuildContext context){
    return showDialog(
      context:context,
      builder: (BuildContext context){
        return AlertDialog(
          actions: [
            IconButton(
              icon: Icon(Icons.done),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
          title: Text("Opps"),
        );
      }
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("======================> $state");
    if(state ==AppLifecycleState.inactive){
      super.didChangeAppLifecycleState(AppLifecycleState.resumed);
      print("===========>fffffff=> $state");

      setState((){
       Navigator.pushNamed(context, Second.id);
      });
    }else if(state == AppLifecycleState.paused){
      super.didChangeAppLifecycleState(AppLifecycleState.resumed);
      print("fter $state");
    }else if(state==AppLifecycleState.detached){
      super.didChangeAppLifecycleState(AppLifecycleState.resumed);
      print("fluttter $state");
    }else if(state==AppLifecycleState.resumed){
      super.didChangeAppLifecycleState(AppLifecycleState.resumed);
      print("flut resume:   $state");
    }
    // super.didChangeAppLifecycleState(state);
  }
  @override
  void didChangeLocales(List<Locale>? locales) {
    // TODO: implement didChangeLocales
    super.didChangeLocales(locales);
  }
  @override
  void didChangeMetrics() {
    // TODO: implement didChangeMetrics
    super.didChangeMetrics();
  }
  @override
  void didChangePlatformBrightness() {
    // TODO: implement didChangePlatformBrightness
    super.didChangePlatformBrightness();
  }
  @override
  Future<bool> didPopRoute() async {
    // TODO: implement didPopRoute
    //return super.didPopRoute();
    return await false;
  }
  @override
  void didUpdateWidget(covariant Home oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
  @override
  void didHaveMemoryPressure() {
    // TODO: implement didHaveMemoryPressure
    super.didHaveMemoryPressure();
  }

  /////
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    setState((){

    });
    super.initState();
  }
  @override
  void didChangeAccessibilityFeatures() {
    // TODO: implement didChangeAccessibilityFeatures
    super.didChangeAccessibilityFeatures();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width+100,
          child: ListView.builder(
            itemCount: list.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(list[0]),
                    Text(list[1]),
                    Text(list[2]),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
