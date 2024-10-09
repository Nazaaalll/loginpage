import 'package:flutter/material.dart';

void main(){
  runApp(const LoginTask());
}

class LoginTask extends StatelessWidget {
  const LoginTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _username = '';
  String _password = '';
void _showError(BuildContext context){
 {showDialog(context: context, builder: (context) => AlertDialog(
                title:  const Text('Login Failed'),
                content: const Text('invalid username or pass'),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: const Text('ok'))
                ],

              ));}

}

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                
                decoration: const InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(),
                ),
                 onChanged: (value) {
                _username = value; 
              },
              ),
              const SizedBox(height: 10,),
              TextField(
               
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                 onChanged: (value) {
                _password = value; 
              },
              ),
              const SizedBox(height: 10,),
               ElevatedButton(
              onPressed: () {
                
                if (_username == 'user' && _password == 'pass') {
                
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                }
              
                  else {
                    _showError(context);
                  }
                   
                }, 
                child: const Text('LOGIN')),
              
            ],
          ),
        ),
      ),
    );
  }

}




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Home Page', 
        style: TextStyle(color: Colors.black,fontSize: 10,),),
        ),
        body: const Center(
         child: Text('WELCOME TO HOME PAGE'),
        ),
      ),
    );
  }
}