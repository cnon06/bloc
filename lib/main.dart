import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled16/ikinciSayfa.dart';
import 'package:untitled16/sayacCubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) => sayacCubit(),)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}


class MyHomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnaSayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<sayacCubit,int>(
              builder: (context,sayacDegeri)
              {
                return Text("$sayacDegeri",style: TextStyle(fontSize: 30),);
              },
            ),

            ElevatedButton(onPressed: ()
                {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => ikinciSayfa()));

                }, child: Text("Geçiş Yap"))

          ],
        ),
      ),

    );
  }
}
