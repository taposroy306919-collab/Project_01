import 'package:flutter/material.dart';
import 'package:project_1/screen/reg.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
              "https://png.pngtree.com/thumb_back/fh260/background/20240421/pngtree-blue-water-splash-wave-screen-background-image_15717616.jpg",
              height: 250,
            width: 450,
            fit: BoxFit.cover,
          ),
          Text("Log In Here",
            style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 30
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "PassWord",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // Show/Hide password
                    },
                    icon: const Icon(Icons.visibility),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                  )
              ),
            ),
          ),
          InkWell(
            onTap: () {

            },
            child: Card(
              margin: EdgeInsets.all(7),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Log IN", style: TextStyle(color:Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Text("Not Register Yet?"),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegScreen()));
                },
                  child: Text("Register Now", style: TextStyle(color:Colors.blue),)
              )
            ],
          ),

        ],
      ),
    );
  }
}
