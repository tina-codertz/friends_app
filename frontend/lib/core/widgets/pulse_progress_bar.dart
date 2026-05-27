//set the step indicator for account creation process

import "package:flutter/material.dart";
import "package:frontend/core/theme/app_colors.dart";

class PulseProgressBar extends StatelessWidget{
    final int currentStep;
    final int totalSteps;

    const PulseProgressBar({
        super.key,
        required this.currentStep,
        required this.totalSteps,

    });


    @override 
    Widget build(BuildContext context){
        final progress = currentStep / totalSteps;

        return ClipRRect(
            borderRadius:BorderRadius.circular(4),
            child:SizedBox(
                height:4,
                child:Stack(
                    children:[
                        Container(
                            color:AppColors.grey.withOpacity(0.3),

                        ),
                        FractionallySizedBox(
                            widthFactor:progress,
                            child:Container(
                                color:AppColors.cyan,
                            ),
                        ),
                    ],
                ),
            )
        );
    }
}