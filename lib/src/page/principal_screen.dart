import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/app_barr.dart';
import 'package:flutter_application_1/src/widgets/bar_products_widget.dart';
import 'package:flutter_application_1/src/widgets/bar_services_widget.dart';
import 'package:flutter_application_1/src/widgets/carrusel_card_widget.dart';
import 'package:flutter_application_1/src/widgets/carrusel_widget.dart';
import 'package:flutter_application_1/src/widgets/information_person_widget.dart';
import 'package:flutter_application_1/src/splash/styles/colors/colors_views.dart';
import 'package:flutter_application_1/src/widgets/busqueda_bar_widget.dart';
import 'package:flutter_application_1/src/widgets/mascotas_widget.dart';
import 'package:flutter_application_1/src/widgets/opciones_servicios_widget.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppBarTiendaWidget(),
      body: SafeArea(
        // child: BasicInformationWidget(size: size),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DescriptionWidget(size: size),
              const Divider(thickness: 2),
              MascotasWidget(size: size),
              OpcionesProductosWidget(size: size),
              BarBusquedaWidget(size: size),
              CarrouselImagePrincipal(size: size),
              const Divider(thickness: 2),
              ProductosSecaWidget(size: size),
              CarrouselImageCard(size: size),
              const Divider(thickness: 2),
              ServiceSecaWidget(size: size),
              CarrouselImageCard(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.24,
      child: Row(
        children: [
          InfomationWidget(size: size),
          SizedBox(
            width: size.width * 0.5,
            height: size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: size.height * 0.11,
                    width: size.width * 0.4,
                    child: Image.asset("assets/B5.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.01,
                    left: size.height * 0.01,
                    right: size.height * 0.01,
                  ),
                  child: const ExpansionTile(
                    textColor: Colors.black,
                    collapsedBackgroundColor:
                        Color.fromARGB(255, 231, 231, 231),
                    title: Text(
                      'Entrega domicilio',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    children: <Widget>[],
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
