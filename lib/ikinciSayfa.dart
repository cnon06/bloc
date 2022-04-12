
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled16/sayacCubit.dart';

class ikinciSayfa extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
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
              context.read<sayacCubit>().sayacArttir();


            }, child: Text("Sayaç Arttır")),
            ElevatedButton(onPressed: ()
            {

              context.read<sayacCubit>().sayacAzalt(3);

            }, child: Text("Sayaç Azalt"))

          ],
        ),
      ),

    );
  }
}
