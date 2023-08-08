import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_tok_clone/config/theme/AppTheme.dart';
import 'package:tik_tok_clone/presentation/providers/discover_provider.dart';
import 'package:tik_tok_clone/presentation/screens/discover/discover_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage()
          )
      ],
      child: MaterialApp(
        title: 'TikTokClone',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
