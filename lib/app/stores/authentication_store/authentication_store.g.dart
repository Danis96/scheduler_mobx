// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthenticationStore on AuthenticationBase, Store {
  Computed<Admin>? _$adminComputed;

  @override
  Admin get admin => (_$adminComputed ??=
          Computed<Admin>(() => super.admin, name: 'AuthenticationBase.admin'))
      .value;
  Computed<List<Admin>>? _$adminsComputed;

  @override
  List<Admin> get admins =>
      (_$adminsComputed ??= Computed<List<Admin>>(() => super.admins,
              name: 'AuthenticationBase.admins'))
          .value;

  late final _$_adminAtom =
      Atom(name: 'AuthenticationBase._admin', context: context);

  @override
  Admin get _admin {
    _$_adminAtom.reportRead();
    return super._admin;
  }

  @override
  set _admin(Admin value) {
    _$_adminAtom.reportWrite(value, super._admin, () {
      super._admin = value;
    });
  }

  late final _$_adminsAtom =
      Atom(name: 'AuthenticationBase._admins', context: context);

  @override
  List<Admin>? get _admins {
    _$_adminsAtom.reportRead();
    return super._admins;
  }

  @override
  set _admins(List<Admin>? value) {
    _$_adminsAtom.reportWrite(value, super._admins, () {
      super._admins = value;
    });
  }

  late final _$changesOccurredAtom =
      Atom(name: 'AuthenticationBase.changesOccurred', context: context);

  @override
  bool get changesOccurred {
    _$changesOccurredAtom.reportRead();
    return super.changesOccurred;
  }

  @override
  set changesOccurred(bool value) {
    _$changesOccurredAtom.reportWrite(value, super.changesOccurred, () {
      super.changesOccurred = value;
    });
  }

  late final _$appVersionAtom =
      Atom(name: 'AuthenticationBase.appVersion', context: context);

  @override
  String get appVersion {
    _$appVersionAtom.reportRead();
    return super.appVersion;
  }

  @override
  set appVersion(String value) {
    _$appVersionAtom.reportWrite(value, super.appVersion, () {
      super.appVersion = value;
    });
  }

  late final _$registerUserAsyncAction =
      AsyncAction('AuthenticationBase.registerUser', context: context);

  @override
  Future<String?> registerUser() {
    return _$registerUserAsyncAction.run(() => super.registerUser());
  }

  late final _$loginUserAsyncAction =
      AsyncAction('AuthenticationBase.loginUser', context: context);

  @override
  Future<String?> loginUser() {
    return _$loginUserAsyncAction.run(() => super.loginUser());
  }

  late final _$fetchAdminsAsyncAction =
      AsyncAction('AuthenticationBase.fetchAdmins', context: context);

  @override
  Future<String?> fetchAdmins() {
    return _$fetchAdminsAsyncAction.run(() => super.fetchAdmins());
  }

  late final _$reAuthenticateAdminAndChangePasswordAsyncAction = AsyncAction(
      'AuthenticationBase.reAuthenticateAdminAndChangePassword',
      context: context);

  @override
  Future<String?> reAuthenticateAdminAndChangePassword() {
    return _$reAuthenticateAdminAndChangePasswordAsyncAction
        .run(() => super.reAuthenticateAdminAndChangePassword());
  }

  late final _$forgotPasswordFirebaseAuthAsyncAction = AsyncAction(
      'AuthenticationBase.forgotPasswordFirebaseAuth',
      context: context);

  @override
  Future<String?> forgotPasswordFirebaseAuth() {
    return _$forgotPasswordFirebaseAuthAsyncAction
        .run(() => super.forgotPasswordFirebaseAuth());
  }

  late final _$fetchAppVersionAsyncAction =
      AsyncAction('AuthenticationBase.fetchAppVersion', context: context);

  @override
  Future<void> fetchAppVersion() {
    return _$fetchAppVersionAsyncAction.run(() => super.fetchAppVersion());
  }

  late final _$AuthenticationBaseActionController =
      ActionController(name: 'AuthenticationBase', context: context);

  @override
  void setProfileEditChanges() {
    final _$actionInfo = _$AuthenticationBaseActionController.startAction(
        name: 'AuthenticationBase.setProfileEditChanges');
    try {
      return super.setProfileEditChanges();
    } finally {
      _$AuthenticationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getCurrentUser() {
    final _$actionInfo = _$AuthenticationBaseActionController.startAction(
        name: 'AuthenticationBase.getCurrentUser');
    try {
      return super.getCurrentUser();
    } finally {
      _$AuthenticationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setChangesOccurred() {
    final _$actionInfo = _$AuthenticationBaseActionController.startAction(
        name: 'AuthenticationBase.setChangesOccurred');
    try {
      return super.setChangesOccurred();
    } finally {
      _$AuthenticationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
changesOccurred: ${changesOccurred},
appVersion: ${appVersion},
admin: ${admin},
admins: ${admins}
    ''';
  }
}
