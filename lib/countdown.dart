// lib/countdown_widget.dart
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:piddu/cakecutting.dart';

class CountdownWidget extends StatefulWidget {
  final DateTime targetDate;

  const CountdownWidget({required this.targetDate});

  @override
  _CountdownWidgetState createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  late Duration _remainingTime;
  late Timer _timer;
  final Duration _totalTime = const Duration(minutes: 5);

  @override
  void initState() {
    super.initState();
    _calculateRemainingTime();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _calculateRemainingTime();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _calculateRemainingTime() {
    DateTime now = DateTime.now();
    Duration difference = widget.targetDate.difference(now);
    setState(() {
      _remainingTime = difference;
    });
  }

void next() {
Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => CakeCuttingScreen() ,),);
}
  @override
  Widget build(BuildContext context) {
    double progress = 1 - (_remainingTime.inSeconds / _totalTime.inSeconds);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(fit: StackFit.expand, children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black
                .withOpacity(0.4), // Adjust the opacity here (0.0 to 1.0)
            BlendMode.dstATop,
          ),
          // Background Image
          child: Image.asset(
            'assets/images/cake.png', // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ), // Other widgets on top of the image
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Time to go!',
                style: GoogleFonts.ubuntu(
                    fontSize: 35,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold)),
            Text(
              '${_remainingTime.inDays} : ${_remainingTime.inHours % 24} : ${_remainingTime.inMinutes % 60} : ${_remainingTime.inSeconds % 60}',
              style: GoogleFonts.ubuntu(
                fontSize: 40,
                color: Colors.yellowAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 18,),
                      Text('Lets cut the cake',style: GoogleFonts.ubuntu(
                              fontSize: 28,
                              color: Color.fromARGB(255, 244, 3, 180),
                              fontWeight: FontWeight.bold),),
                              const SizedBox(width: 18,),
                              ElevatedButton(onPressed: next, child: const Icon(Icons.cake))
                    ],
                  ),
                
                        
                        
         
            
          ],
        ),
      ]),
    );
  }
}
