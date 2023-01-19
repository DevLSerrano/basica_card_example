import 'package:flutter/material.dart';

class CardAPP extends StatelessWidget {
  const CardAPP({
    Key? key,
    required this.incrementCounter,
    required this.decrementCounter,
    required this.counter,
  }) : super(key: key);

  final VoidCallback incrementCounter;
  final VoidCallback decrementCounter;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: kToolbarHeight,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: Colors.grey[200],
            ),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(),
                SizedBox(width: 10),
                Text('Ganhe 3 pts'),
                SizedBox(width: 10),
                FlutterLogo()
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: const FlutterLogo(
              size: 150,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: decrementCounter,
                icon: const Icon(Icons.remove_circle),
              ),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              IconButton(
                onPressed: incrementCounter,
                icon: const Icon(Icons.add_circle),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              color: Colors.blue[900],
            ),
            height: kToolbarHeight,
            alignment: Alignment.center,
            child: const Text('Adicionar'),
          )
        ],
      ),
    );
  }
}
