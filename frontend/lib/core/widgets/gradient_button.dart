//to create a reusable gradient button with a label and an optional icon

import "package:flutter/material.dart";
import "package:frontend/core/theme/app_colors.dart";
import "package:frontend/core/theme/app_text_styles.dart";


class GradientButton extends StatelessWidget{
    final String label;
    final VoidCallback onPressed;
    final IconData? icon;

    const GradientButton({
        super.key,
        required this.label,
        required this.onPressed,
        this.icon,
    });

    @override
    Widget build(BuildContext context ){
        return GestureDetector(
            onTap:onPressed,
            child:Container(
                width:double.infinity,
                height:56,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(28),
                    gradient:const LinearGradient(
                        colors:[
                            AppColors.cyan,
                            AppColors.purple,
                        ],
                        begin:Alignment.centerLeft,
                        end:Alignment.centerRight,
                    ),
                ),

                child:Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:[
                        if(icon != null)...[
                            Icon(icon, color:AppColors.background, size:20),
                            const SizedBox(width:8),

                        ],
                        Text(label, style:AppTextStyles.buttonPrimary),
                    ],
                ),
            ),
        );
    }
}