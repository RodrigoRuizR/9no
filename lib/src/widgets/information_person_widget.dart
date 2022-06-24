import 'package:flutter/material.dart';

class InfomationWidget extends StatelessWidget {
  const InfomationWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.5,
      height: size.height,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  top: size.height * 0.018,
                  bottom: size.height * 0.02,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: <InlineSpan>[
                        const TextSpan(
                          text: 'Hola',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: ' Juan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade400,
                            fontSize: 30,
                          ),
                        ),
                        const TextSpan(
                          text: ',',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            // color: Colors.blue,
            height: size.height * 0.13,
            child: Row(
              children: [
                Container(
                  // color: Colors.red,
                  width: size.width * 0.1,
                  height: size.height * 0.1,
                  child: Image.asset("assets/images/B5.png"),
                ),
                Container(
                  // color: Colors.amber,
                  width: size.width * 0.4,
                  height: size.height * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Entregar ahora",
                        style: TextStyle(color: Colors.grey),
                      ),
                      ExpansionTile(
                        title: Padding(
                          padding: EdgeInsets.all(0),
                          child: Text(
                            "Calle 10 9",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
