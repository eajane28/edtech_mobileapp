// Mocks generated by Mockito 5.4.2 from annotations
// in edtech_mobile/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:ui' as _i6;

import 'package:dartz/dartz.dart' as _i2;
import 'package:edtech_mobile/exceptions/app_exception.dart' as _i8;
import 'package:edtech_mobile/model/user.dart' as _i9;
import 'package:edtech_mobile/services/auth_service.dart' as _i7;
import 'package:edtech_mobile/services/local_storage.dart' as _i10;
import 'package:flutter/material.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i3.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i4.GlobalKey<_i4.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(
        Invocation.method(
          #nestedNavigationKey,
          [index],
        ),
        returnValueForMissingStub: null,
      ) as _i4.GlobalKey<_i4.NavigatorState>?);
  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i3.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<T?>? navigateWithTransition<T>(
    _i4.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i4.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i3.Transition? transitionClass,
    _i3.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? replaceWithTransition<T>(
    _i4.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i4.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i3.Transition? transitionClass,
    _i3.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void popUntil(
    _i4.RoutePredicate? predicate, {
    int? id,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
          {#id: id},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i4.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateTo,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? navigateToView<T>(
    _i4.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i4.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i3.Transition? transition,
    _i3.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateToView,
          [view],
          {
            #arguments: arguments,
            #id: id,
            #opaque: opaque,
            #curve: curve,
            #duration: duration,
            #fullscreenDialog: fullscreenDialog,
            #popGesture: popGesture,
            #preventDuplicates: preventDuplicates,
            #transition: transition,
            #transitionStyle: transitionStyle,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i4.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWith,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearStackAndShowView<T>(
    _i4.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearTillFirstAndShowView<T>(
    _i4.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i4.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pushNamedAndRemoveUntil,
          [routeName],
          {
            #predicate: predicate,
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i5.Future<T?>?);
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i3.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i3.SheetBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #setCustomSheetBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<_i3.SheetResponse<dynamic>?> showBottomSheet({
    required String? title,
    String? description,
    String? confirmButtonTitle = r'Ok',
    String? cancelButtonTitle,
    bool? enableDrag = true,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showBottomSheet,
          [],
          {
            #title: title,
            #description: description,
            #confirmButtonTitle: confirmButtonTitle,
            #cancelButtonTitle: cancelButtonTitle,
            #enableDrag: enableDrag,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i5.Future<_i3.SheetResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i5.Future<_i3.SheetResponse<dynamic>?>.value(),
      ) as _i5.Future<_i3.SheetResponse<dynamic>?>);
  @override
  _i5.Future<_i3.SheetResponse<T>?> showCustomSheet<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i6.Color? barrierColor = const _i6.Color(2315255808),
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    String? barrierLabel = r'',
    dynamic customData,
    R? data,
    bool? enableDrag = true,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomSheet,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #barrierLabel: barrierLabel,
            #customData: customData,
            #data: data,
            #enableDrag: enableDrag,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i5.Future<_i3.SheetResponse<T>?>.value(),
        returnValueForMissingStub: _i5.Future<_i3.SheetResponse<T>?>.value(),
      ) as _i5.Future<_i3.SheetResponse<T>?>);
  @override
  void completeSheet(_i3.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeSheet,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DialogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDialogService extends _i1.Mock implements _i3.DialogService {
  @override
  void registerCustomDialogBuilders(
          Map<dynamic, _i3.DialogBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void registerCustomDialogBuilder({
    required dynamic variant,
    required _i4.Widget Function(
      _i4.BuildContext,
      _i3.DialogRequest<dynamic>,
      dynamic Function(_i3.DialogResponse<dynamic>),
    )? builder,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilder,
          [],
          {
            #variant: variant,
            #builder: builder,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<_i3.DialogResponse<dynamic>?> showDialog({
    String? title,
    String? description,
    String? cancelTitle,
    _i6.Color? cancelTitleColor,
    String? buttonTitle = r'Ok',
    _i6.Color? buttonTitleColor,
    bool? barrierDismissible = false,
    _i3.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #buttonTitle: buttonTitle,
            #buttonTitleColor: buttonTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i5.Future<_i3.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i5.Future<_i3.DialogResponse<dynamic>?>.value(),
      ) as _i5.Future<_i3.DialogResponse<dynamic>?>);
  @override
  _i5.Future<_i3.DialogResponse<T>?> showCustomDialog<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i6.Color? barrierColor = const _i6.Color(2315255808),
    bool? barrierDismissible = false,
    String? barrierLabel = r'',
    bool? useSafeArea = true,
    dynamic customData,
    R? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomDialog,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #barrierLabel: barrierLabel,
            #useSafeArea: useSafeArea,
            #customData: customData,
            #data: data,
          },
        ),
        returnValue: _i5.Future<_i3.DialogResponse<T>?>.value(),
        returnValueForMissingStub: _i5.Future<_i3.DialogResponse<T>?>.value(),
      ) as _i5.Future<_i3.DialogResponse<T>?>);
  @override
  _i5.Future<_i3.DialogResponse<dynamic>?> showConfirmationDialog({
    String? title,
    String? description,
    String? cancelTitle = r'Cancel',
    _i6.Color? cancelTitleColor,
    String? confirmationTitle = r'Ok',
    _i6.Color? confirmationTitleColor,
    bool? barrierDismissible = false,
    _i3.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showConfirmationDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #confirmationTitle: confirmationTitle,
            #confirmationTitleColor: confirmationTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i5.Future<_i3.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i5.Future<_i3.DialogResponse<dynamic>?>.value(),
      ) as _i5.Future<_i3.DialogResponse<dynamic>?>);
  @override
  void completeDialog(_i3.DialogResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeDialog,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [AuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthService extends _i1.Mock implements _i7.AuthService {
  @override
  _i5.Future<_i2.Either<_i8.AppException, _i2.None<dynamic>>> signUpWithEmail({
    required String? name,
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUpWithEmail,
          [],
          {
            #name: name,
            #email: email,
            #password: password,
          },
        ),
        returnValue:
            _i5.Future<_i2.Either<_i8.AppException, _i2.None<dynamic>>>.value(
                _FakeEither_0<_i8.AppException, _i2.None<dynamic>>(
          this,
          Invocation.method(
            #signUpWithEmail,
            [],
            {
              #name: name,
              #email: email,
              #password: password,
            },
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.Either<_i8.AppException, _i2.None<dynamic>>>.value(
                _FakeEither_0<_i8.AppException, _i2.None<dynamic>>(
          this,
          Invocation.method(
            #signUpWithEmail,
            [],
            {
              #name: name,
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i5.Future<_i2.Either<_i8.AppException, _i2.None<dynamic>>>);
  @override
  _i5.Future<_i2.Either<_i8.AppException, _i9.User>> login({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i5.Future<_i2.Either<_i8.AppException, _i9.User>>.value(
            _FakeEither_0<_i8.AppException, _i9.User>(
          this,
          Invocation.method(
            #login,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.Either<_i8.AppException, _i9.User>>.value(
                _FakeEither_0<_i8.AppException, _i9.User>(
          this,
          Invocation.method(
            #login,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i5.Future<_i2.Either<_i8.AppException, _i9.User>>);
  @override
  _i5.Future<void> logout() => (super.noSuchMethod(
        Invocation.method(
          #logout,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.Either<_i8.AppException, _i2.None<dynamic>>> forgetPassword(
          {required String? email}) =>
      (super.noSuchMethod(
        Invocation.method(
          #forgetPassword,
          [],
          {#email: email},
        ),
        returnValue:
            _i5.Future<_i2.Either<_i8.AppException, _i2.None<dynamic>>>.value(
                _FakeEither_0<_i8.AppException, _i2.None<dynamic>>(
          this,
          Invocation.method(
            #forgetPassword,
            [],
            {#email: email},
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.Either<_i8.AppException, _i2.None<dynamic>>>.value(
                _FakeEither_0<_i8.AppException, _i2.None<dynamic>>(
          this,
          Invocation.method(
            #forgetPassword,
            [],
            {#email: email},
          ),
        )),
      ) as _i5.Future<_i2.Either<_i8.AppException, _i2.None<dynamic>>>);
}

/// A class which mocks [LocalStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalStorage extends _i1.Mock implements _i10.LocalStorage {
  @override
  _i5.Future<void> saveUser(_i9.User? user) => (super.noSuchMethod(
        Invocation.method(
          #saveUser,
          [user],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i2.Either<_i8.AppException, _i9.User?>> getCurrentUser() =>
      (super.noSuchMethod(
        Invocation.method(
          #getCurrentUser,
          [],
        ),
        returnValue: _i5.Future<_i2.Either<_i8.AppException, _i9.User?>>.value(
            _FakeEither_0<_i8.AppException, _i9.User?>(
          this,
          Invocation.method(
            #getCurrentUser,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.Either<_i8.AppException, _i9.User?>>.value(
                _FakeEither_0<_i8.AppException, _i9.User?>(
          this,
          Invocation.method(
            #getCurrentUser,
            [],
          ),
        )),
      ) as _i5.Future<_i2.Either<_i8.AppException, _i9.User?>>);
  @override
  _i5.Future<void> clearUser() => (super.noSuchMethod(
        Invocation.method(
          #clearUser,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> setLastUpdatedPassword() => (super.noSuchMethod(
        Invocation.method(
          #setLastUpdatedPassword,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<String?> getLastUpdatedPassword() => (super.noSuchMethod(
        Invocation.method(
          #getLastUpdatedPassword,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
        returnValueForMissingStub: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);
}
