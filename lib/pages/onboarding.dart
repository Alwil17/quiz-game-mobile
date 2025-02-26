import 'package:flutter/material.dart';
import 'package:quiz_game_mobile/configs/app_extension.dart';

import '../configs/app_theme.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF272052),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppTheme.of(context).primary,
                    AppTheme.of(context).error,
                    AppTheme.of(context).tertiary
                  ],
                  stops: [0, 0.5, 1],
                  begin: AlignmentDirectional(-1, -1),
                  end: AlignmentDirectional(1, 1),
                ),
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0x00FFFFFF),
                      AppTheme.of(context).secondaryBackground
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional(0, -1),
                    end: AlignmentDirectional(0, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/illustrations/onboarding.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Bienvenu !',
                            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'à',
                                    style: Theme.of(context).textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          color: Color(0xFF3C4751),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' Sapientia',
                                    style: Theme.of(context).textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          color: Colors.black,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  TextSpan(
                                    text: '  Académie',
                                    style: Theme.of(context).textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          color: Color(0xFF3C4751),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  )
                                ],
                                style:Theme.of(context).textTheme
                                        .headlineLarge
                                        ?.copyWith(
                                      color: Color(0xFFE0E3E7),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: Text(
                          'Jouez, apprenez et explorez avec des quiz passionnants !',
                          style:
                              Theme.of(context).textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                    color: Color(0xFF3C4751),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFDEDEE1),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                              child: ElevatedButton(
                                onPressed: () async {
                                  Navigator.pushNamed(context, 'Login');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFAF7EE7),
                                  elevation: 0,
                                  padding: EdgeInsets.all(22),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  minimumSize: Size(double.infinity, 0),
                                ),
                                child: Text(
                                  'Commencer',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 12)),
                  ),
                ]
                    .divide(SizedBox(height: 12))
                    .addToStart(SizedBox(height: 30))
                    .addToEnd(SizedBox(height: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
