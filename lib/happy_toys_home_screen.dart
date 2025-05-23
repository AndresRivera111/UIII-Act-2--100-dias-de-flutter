import 'package:flutter/material.dart';
import 'package:myapp/colors.dart';
import 'package:myapp/line_chart.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HappyToysHomeScreen extends StatefulWidget {
  const HappyToysHomeScreen({super.key});

  @override
  State<HappyToysHomeScreen> createState() => _HappyToysHomeScreenState();
}

class _HappyToysHomeScreenState extends State<HappyToysHomeScreen> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios, size: 20),
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/AndresRivera111/imagenes-para-APP-flutter-6J/refs/heads/main/Juguetes/Icon_Profile.png',
                  ),
                  radius: 20,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: TextStyle(fontSize: 18, color: Colors.black45),
                ),
                Text(
                  'Mayo 20 2025',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                happytoysItems(
                  0,
                  Colors.deepOrange,
                  Icons.star_border,
                  "Calidad",
                  "★★★★★",
                  "200",
                ),
                happytoysItems(
                  1,
                  primaryColor,
                  Icons.price_change_outlined,
                  "Bajo",
                  "precio",
                  "-40%",
                ),
                happytoysItems(
                  2,
                  Colors.orangeAccent,
                  Icons.child_care,
                  "Para",
                  "Niños",
                  "+5 años",
                ),
                happytoysItems(
                  3,
                  Colors.deepPurple,
                  Icons.delivery_dining_outlined,
                  "Entrega a",
                  "Domicilio",
                  "Mexico",
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Stack(
              children: [
                Positioned(
                  left: 50,
                  top: 50,
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: SfRadialGauge(
                      axes: [
                        RadialAxis(
                          axisLineStyle: const AxisLineStyle(
                            thickness: 0.2,
                            thicknessUnit: GaugeSizeUnit.factor,
                            cornerStyle: CornerStyle.bothCurve,
                          ),
                          showTicks: false,
                          showLabels: false,
                          pointers: const [
                            RangePointer(
                              color: primaryColor,
                              value: 80,
                              cornerStyle: CornerStyle.bothCurve,
                              width: 0.2,
                              sizeUnit: GaugeSizeUnit.factor,
                            ),
                          ],
                          annotations: const [
                            GaugeAnnotation(
                              widget: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Moto',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text('Niños', style: TextStyle(fontSize: 14)),
                                ],
                              ),
                              positionFactor: 0.1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: SfRadialGauge(
                      axes: [
                        RadialAxis(
                          axisLineStyle: const AxisLineStyle(
                            thickness: 0.15,
                            thicknessUnit: GaugeSizeUnit.factor,
                            cornerStyle: CornerStyle.bothCurve,
                          ),
                          showTicks: false,
                          showLabels: false,
                          pointers: const [
                            RangePointer(
                              color: secondaryColor,
                              value: 65,
                              cornerStyle: CornerStyle.bothCurve,
                              width: 0.15,
                              sizeUnit: GaugeSizeUnit.factor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 100,
                  child: Image.network(
                    'https://raw.githubusercontent.com/AndresRivera111/imagenes-para-APP-flutter-6J/refs/heads/main/Juguetes/Ninos/6.png',
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            child: const Stack(
              clipBehavior: Clip.none,
              children: [
                MyLineChart(),
                Positioned(
                  top: -10,
                  left: 90,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: secondaryColor,
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 15,
                  right: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Dia 1', style: TextStyle(fontSize: 15)),
                      Text('Dia 2 ', style: TextStyle(fontSize: 15)),
                      Text('Dia 3', style: TextStyle(fontSize: 15)),
                      Text('Dia 4', style: TextStyle(fontSize: 15)),
                      Text('Dia 5', style: TextStyle(fontSize: 15)),
                      Text('Dia 6', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SizedBox(
        height: 90,
        child: BottomAppBar(
          color: primaryColor,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 155,
                top: 0,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: secondaryColor,
                  child: Icon(Icons.add, color: Colors.white, size: 30),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 12, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.house_outlined, color: Colors.white, size: 30),
                    Icon(
                      Icons.line_axis_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 40),
                    Icon(Icons.favorite_border, color: Colors.white, size: 30),
                    Icon(Icons.person_outlined, color: Colors.white, size: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded happytoysItems(int index, color, icon, name, value, unit) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          border: Border.all(
            color: currentIndex == index ? secondaryColor : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              child: Icon(icon, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(unit, style: TextStyle(fontSize: 12, color: Colors.black38)),
          ],
        ),
      ),
    );
  }
}
