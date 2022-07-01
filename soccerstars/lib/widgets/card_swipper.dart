//este widget sera la tarjeta tipo de cada jugador
//hay que copiar la dependencia en pubspec que obtenemos de https://pub.dev/packages/card_swiper/install
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //creo una var de la que podre obtner las dimensiones del dispositivo
    final size = MediaQuery.of(context).size;

    return Container(
      width: double
          .infinity, //esto hace que la tarjeta ocupe todo el ancho posible
      height: size.height *
          0.5, //asi obtengo un alto de la mitad de la pantalla del dispositivo que sea
      color: Colors.blueGrey,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details',
                arguments: 'soccer_instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage(
                    'assets/no-image.jpg'), //esta es la imagen que se muestra durante la carga
                image: NetworkImage(
                    'https://via.placeholder.com/300x400'), //esta es la imagen definitiva
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
