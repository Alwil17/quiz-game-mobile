// ignore_for_file: unused_import

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'edit_password_widget.dart' show EditPasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditPasswordModel extends FlutterFlowModel<EditPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for previousPassword widget.
  FocusNode? previousPasswordFocusNode;
  TextEditingController? previousPasswordTextController;
  String? Function(BuildContext, String?)?
      previousPasswordTextControllerValidator;
  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // State field(s) for confNewPassword widget.
  FocusNode? confNewPasswordFocusNode;
  TextEditingController? confNewPasswordTextController;
  String? Function(BuildContext, String?)?
      confNewPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    previousPasswordFocusNode?.dispose();
    previousPasswordTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    confNewPasswordFocusNode?.dispose();
    confNewPasswordTextController?.dispose();
  }
}
