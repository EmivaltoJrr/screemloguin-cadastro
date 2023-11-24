import 'package:flutter/material.dart';
import 'package:loguin/contants.dart';
import 'package:loguin/screens/loguin/loguin_screen.dart';
import 'package:loguin/widgets/app_text.dart';
import 'package:loguin/widgets/app_title.dart';
import 'package:loguin/widgets/imput_text.dart';

class ResgisterScreen extends StatelessWidget {
  static String routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 800),
              child: Container(
                padding: EdgeInsets.all(48),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: AppTitle(
                        'Nova Conta',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    imputText(placeholder: 'Nome'),
                    imputText(placeholder: 'Email'),
                    imputText(placeholder: 'Senha'),
                    imputText(placeholder: ' Confirmar Senha'),
                    SizedBox(
                      width: double.infinity,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          text: 'Ao criar conta você está aceitando nossos ',
                          children: [
                            TextSpan(
                              text: 'termos de serviço',
                              style: TextStyle(color: AppColors.primary),
                            ),
                            TextSpan(
                              text: ' e ',
                            ),
                            TextSpan(
                              text: 'política de privacidade',
                              style: TextStyle(color: AppColors.primary),
                            ),
                            TextSpan(
                              text: ' .',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text('Criar Conta'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText('Já tem sua Conta?'),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              LoguinScrenn.routeName,
                            );
                          },
                          child: AppText(
                            'Entrar',
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
