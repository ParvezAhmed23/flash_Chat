import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id, // instead of writing '/welcome_screen'.

      // WRITING THE NAMED ROUTES FOR OUR APP.
      routes: {
        // instead of writing '/welcome_screen': (context) => WelcomeScreen(). This helps us prevent any typos that can occur while writing the string.
        WelcomeScreen.id: (context) => WelcomeScreen(),
        // '/login_screen': (context) => LoginScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        // '/chat_screen': (context) => ChatScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        // '/registration_screen': (context) => RegistrationScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
