import 'package:flutter/material.dart';

class HomeWorkPage5 extends StatefulWidget {
  const HomeWorkPage5({super.key});

  @override
  State<HomeWorkPage5> createState() => _HomeWorkPage5State();
}

class _HomeWorkPage5State extends State<HomeWorkPage5> {
  int counterText1 = 0;
  int counterText2 = 0;
  int counterText3 = 0;

  Color heartColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: (() {
                    setState(() {
                      counterText1++;
                    });
                  }),
                  child: BoxCounter(
                    cardChild: Text(
                      counterText1.toString(),
                      style: const TextStyle(fontSize: 25.0),
                    ),
                    textLabel: 'الله أكبر',
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (() {
                    setState(() {
                      counterText2++;
                    });
                  }),
                  child: BoxCounter(
                    cardChild: Text(
                      counterText2.toString(),
                      style: const TextStyle(fontSize: 25.0),
                    ),
                    textLabel: 'الحمدلله',
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (() {
                    setState(() {
                      counterText3++;
                    });
                  }),
                  child: BoxCounter(
                    cardChild: Text(
                      counterText3.toString(),
                      style: const TextStyle(fontSize: 25.0),
                    ),
                    textLabel: 'سبحان الله',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 44.0),
          Container(
            margin: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      heartColor = Colors.red;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: heartColor,
                  ),
                ),
                const SizedBox(width: 16.0),
                const Text(
                  "هل اعجبك التطبيق؟",
                  style: TextStyle(fontSize: 25.0),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class BoxCounter extends StatelessWidget {
  final String textLabel;
  final Widget cardChild;

  const BoxCounter({super.key, required this.textLabel, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: const Color(0xffefefef),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          cardChild,
          Text(
            textLabel,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
