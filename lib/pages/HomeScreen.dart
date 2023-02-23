
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testingflutter/blocs/app_blocs.dart';
import 'package:testingflutter/blocs/app_events.dart';
import 'package:testingflutter/blocs/app_states.dart';
import 'package:testingflutter/service/service.dart';
import 'package:firebase_core/firebase_core.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? myUsername;
  User? user = FirebaseAuth.instance.currentUser;

  @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(_userRepository)(
        RepositoryProvider.of<UserRepository>(context),
      )..add(LoadUserEvent()),
      
      child: Scaffold(
        body:   BlocBuilder<UserBloc, UserState>(builder: (context, state) {
          if (state is UserLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          });
      //     Container(
      // color: Color(0xff2A0D2E),
      // child: ListView(
      //   padding: const EdgeInsets.all(8),
      //   children: <Widget>[
      //     Container(
      //       height: 60,
      //       child: Padding(
      //         padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Row(children: [
      //               Padding(
      //                   padding: const EdgeInsets.only(left: 10),
      //                   child: Text(
      //                     "Hi $user",
      //                     style: TextStyle(color: Colors.white),
      //                   ))
      //             ])
      //           ],
      //         ),
      //       ),
      //     )])))))};
          
     
          // if (state is UserLoadedState) {
          //   List<UserModel> userList = state.users;
          //   return ListView.builder(
          //     itemCount: userList.length,
          //     itemBuilder: (_, index) {
          //       return Card(
          //         color: Colors.blue,
          //         elevation: 4,
          //         margin: const EdgeInsets.symmetric(vertical: 10),
          //         child: ListTile(
          //             title: Text(
          //               userList[index].name,
          //               style: const TextStyle(color: Colors.white),
          //             ),
          //             subtitle: Text(
          //               userList[index].nik,
          //               style: const TextStyle(color: Colors.white),
          //             ),
          //            
          //       );
          //     },
          //   );
          // }
          // if (state is UserErrorState) {
          //   return Center(
          //     child: Text("error"),
          //   );
          // }
          // return Container();
        
    
        
   
      

