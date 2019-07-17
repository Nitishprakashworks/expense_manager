import 'package:flutter/material.dart';
import '../blocs/bloc.dart';


class LoginScreen extends StatelessWidget{
  Widget build(context)
  {
     
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Column(
        children: [
          emailField(),
          passWord(),
          Container(margin: EdgeInsets.all(20.0)),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField(){

    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
         return TextField(
         onChanged: bloc.changeEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@example.com',
        labelText: 'Email Address',
        errorText: snapshot.error,

      
         ),
    );
         }
    );
    
  }

    
  Widget passWord(){
     return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot){

    return TextField(
      obscureText: true,
      onChanged: bloc.changePassword,
      decoration: InputDecoration(
        
        hintText: 'password',
        labelText: 'passwordddd',
        errorText: snapshot.error,
      ),
    );
      }
     );
  }
  
   Widget submitButton(){
    return RaisedButton(
      onPressed: () {},
      child: Text('Login'),
      color: Colors.blue,
    );
   }
  
    

}