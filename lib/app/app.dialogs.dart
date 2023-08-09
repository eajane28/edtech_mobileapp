// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import '../ui/dialogs/update_email_dialog/update_email_dialog_ui.dart';
import '../ui/dialogs/update_name_dialog/update_name_dialog_ui.dart';
import 'app.locator.dart';
import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import '../ui/dialogs/my_confirmation_dialog/my_confirmation_dialog.dart';
import '../ui/dialogs/update_password_dialog/update_password_dialog_ui.dart';

enum DialogType { infoAlert, updatePasswordDialogUi, myConfirmation, updateEmailDialogUi, updateNameDialogUi }

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.infoAlert: (context, request, completer) => InfoAlertDialog(request: request, completer: completer),
    DialogType.updatePasswordDialogUi: (context, request, completer) =>
        UpdatePasswordDialogUi(request: request, completer: completer),
    DialogType.updateEmailDialogUi: (context, request, completer) =>
        UpdateEmailDialogUi(request: request, completer: completer),
    DialogType.myConfirmation: (context, request, completer) =>
        MyConfirmationDialog(request: request, completer: completer),
    DialogType.updateNameDialogUi: (context, request, completer) =>
        UpdateNameDialogUi(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
