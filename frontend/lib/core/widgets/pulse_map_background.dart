//to create a reusable wrapper that pants dark map-stayle background then put the screen content on top

import "package:flutter/material.dart";
import "package:frontend/core/theme/app_colors.dart";

class MapLinesPainter extends CustomPainter{
    @override
    void paint(Canvas canvas, Size size){
        final paint = Paint()
        ..color = AppColors.purple.withOpacity(0.25)
        ..strokeWidth= 1.5
        ..style = PaintingStyle.stroke;
        
        //drawing the horizontal line like map streets
        for (double y = 0; y< size.height;y+=80){
            canvas.drawLine(
                Offset(0,y),
                Offset(size.width, y+ 40),
                paint,
            );
        }

        for (double x= 0 ; x<size.width; x+=60){
            canvas.drawLine(
                Offset(x,0),
                Offset(x + 30, size.height),
                paint,
            );
        }

    }
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class PulseMapBackground extends StatelessWidget{
    final Widget child;
    const PulseMapBackground({
        super.key,
        required this.child,
    });

    @override
    Widget build (BuildContext context){
        return Stack(
            children:[
                Container(
                    color:AppColors.background,
                ),
                Container(
                    decoration:BoxDecoration(
                        gradient:RadialGradient(
                            center:Alignment.center,
                            radius:1.2,
                            colors:[
                                AppColors.purple.withValues(alpha:0.15),
                                AppColors.background,
                            ]
                        ),
                    ),
                ),

                CustomPaint(
                    painter:MapLinesPainter(),
                    size:Size.infinite,
                ),
                child,

            ],
        );
    }
}