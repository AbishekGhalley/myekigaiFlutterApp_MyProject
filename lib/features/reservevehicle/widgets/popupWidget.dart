import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/reusables/reusables.dart';
import 'package:myekigai/theme/theme.dart';

class PopupWidget extends StatelessWidget {
  final VoidCallback onReturnTap;
  final String returnText;
  final String titleText;
  final String btnText;

  const PopupWidget(
      {super.key,
      required this.onReturnTap,
      required this.titleText,
      required this.returnText,
      required this.btnText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
      ),
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Reserve vehicle?',
              style: GoogleFonts.sen(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Pallete.textColor,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onPressed: onReturnTap
                // Handle the reservation logic here
                // For example, you can show a confirmation message and navigate back to the previous screen.

                ,
                text: btnText,
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  returnText,
                  style: GoogleFonts.sen(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      color: Pallete.primaryColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
