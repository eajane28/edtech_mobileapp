// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import '../ui/dialogs/update_password_dialog/update_password_dialog_ui.dart';

enum DialogType {
  infoAlert,
  updatePasswordDialogUi,
}

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.infoAlert: (context, request, completer) =>
        InfoAlertDialog(request: request, completer: completer),
    DialogType.updatePasswordDialogUi: (context, request, completer) =>
        UpdatePasswordDialogUi(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
