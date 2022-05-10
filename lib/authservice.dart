import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> anonymousSignIn()async{
    try{
      await _firebaseAuth.signInAnonymously();
      return true;
    }
    catch(e){
      print(e.toString());
      return false;
    }
  }


Future<bool> emailPassSignIn(String email,String password )async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      
      return true;
    }
    catch(e){
      print(e.toString());
      return false;
    }
  }

Future<bool> signUp(String email,String password)async{
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return true;
    }
    catch(e){
      print(e.toString());
      return false;
    }
  }


  
  

  

  Future<bool> signOut()async{
    try{
      await _firebaseAuth.signOut();
      return true;
    }
    catch(e){
       print(e.toString());
      return false;
    
    }
  }



}