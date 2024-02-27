// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppointmentStore on AppointmentBase, Store {
  Computed<List<Appointment>>? _$appointmentsComputed;

  @override
  List<Appointment> get appointments => (_$appointmentsComputed ??=
          Computed<List<Appointment>>(() => super.appointments,
              name: 'AppointmentBase.appointments'))
      .value;
  Computed<List<Appointment>>? _$appointmentsNotConfirmedComputed;

  @override
  List<Appointment> get appointmentsNotConfirmed =>
      (_$appointmentsNotConfirmedComputed ??= Computed<List<Appointment>>(
              () => super.appointmentsNotConfirmed,
              name: 'AppointmentBase.appointmentsNotConfirmed'))
          .value;
  Computed<List<Appointment>>? _$appointmentsConfirmedComputed;

  @override
  List<Appointment> get appointmentsConfirmed =>
      (_$appointmentsConfirmedComputed ??= Computed<List<Appointment>>(
              () => super.appointmentsConfirmed,
              name: 'AppointmentBase.appointmentsConfirmed'))
          .value;
  Computed<List<Appointment>>? _$appointmentsFinishedComputed;

  @override
  List<Appointment> get appointmentsFinished =>
      (_$appointmentsFinishedComputed ??= Computed<List<Appointment>>(
              () => super.appointmentsFinished,
              name: 'AppointmentBase.appointmentsFinished'))
          .value;
  Computed<List<Appointment>>? _$appointmentsFavoritesComputed;

  @override
  List<Appointment> get appointmentsFavorites =>
      (_$appointmentsFavoritesComputed ??= Computed<List<Appointment>>(
              () => super.appointmentsFavorites,
              name: 'AppointmentBase.appointmentsFavorites'))
          .value;
  Computed<Appointment>? _$appointmentComputed;

  @override
  Appointment get appointment =>
      (_$appointmentComputed ??= Computed<Appointment>(() => super.appointment,
              name: 'AppointmentBase.appointment'))
          .value;
  Computed<Appointment>? _$appointmentDetailsComputed;

  @override
  Appointment get appointmentDetails => (_$appointmentDetailsComputed ??=
          Computed<Appointment>(() => super.appointmentDetails,
              name: 'AppointmentBase.appointmentDetails'))
      .value;
  Computed<List<dynamic>>? _$imageListComputed;

  @override
  List<dynamic> get imageList =>
      (_$imageListComputed ??= Computed<List<dynamic>>(() => super.imageList,
              name: 'AppointmentBase.imageList'))
          .value;

  late final _$appointmentFinishedAtom =
      Atom(name: 'AppointmentBase.appointmentFinished', context: context);

  @override
  bool get appointmentFinished {
    _$appointmentFinishedAtom.reportRead();
    return super.appointmentFinished;
  }

  @override
  set appointmentFinished(bool value) {
    _$appointmentFinishedAtom.reportWrite(value, super.appointmentFinished, () {
      super.appointmentFinished = value;
    });
  }

  late final _$isFavoriteAtom =
      Atom(name: 'AppointmentBase.isFavorite', context: context);

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  late final _$isConfirmedAtom =
      Atom(name: 'AppointmentBase.isConfirmed', context: context);

  @override
  bool get isConfirmed {
    _$isConfirmedAtom.reportRead();
    return super.isConfirmed;
  }

  @override
  set isConfirmed(bool value) {
    _$isConfirmedAtom.reportWrite(value, super.isConfirmed, () {
      super.isConfirmed = value;
    });
  }

  late final _$allDayAtom =
      Atom(name: 'AppointmentBase.allDay', context: context);

  @override
  bool get allDay {
    _$allDayAtom.reportRead();
    return super.allDay;
  }

  @override
  set allDay(bool value) {
    _$allDayAtom.reportWrite(value, super.allDay, () {
      super.allDay = value;
    });
  }

  late final _$firstTimeAtom =
      Atom(name: 'AppointmentBase.firstTime', context: context);

  @override
  TimeOfDay get firstTime {
    _$firstTimeAtom.reportRead();
    return super.firstTime;
  }

  @override
  set firstTime(TimeOfDay value) {
    _$firstTimeAtom.reportWrite(value, super.firstTime, () {
      super.firstTime = value;
    });
  }

  late final _$lastTimeAtom =
      Atom(name: 'AppointmentBase.lastTime', context: context);

  @override
  TimeOfDay get lastTime {
    _$lastTimeAtom.reportRead();
    return super.lastTime;
  }

  @override
  set lastTime(TimeOfDay value) {
    _$lastTimeAtom.reportWrite(value, super.lastTime, () {
      super.lastTime = value;
    });
  }

  late final _$gendersAtom =
      Atom(name: 'AppointmentBase.genders', context: context);

  @override
  List<String> get genders {
    _$gendersAtom.reportRead();
    return super.genders;
  }

  @override
  set genders(List<String> value) {
    _$gendersAtom.reportWrite(value, super.genders, () {
      super.genders = value;
    });
  }

  late final _$genderValueAtom =
      Atom(name: 'AppointmentBase.genderValue', context: context);

  @override
  String get genderValue {
    _$genderValueAtom.reportRead();
    return super.genderValue;
  }

  @override
  set genderValue(String value) {
    _$genderValueAtom.reportWrite(value, super.genderValue, () {
      super.genderValue = value;
    });
  }

  late final _$_appointmentsAtom =
      Atom(name: 'AppointmentBase._appointments', context: context);

  @override
  List<Appointment> get _appointments {
    _$_appointmentsAtom.reportRead();
    return super._appointments;
  }

  @override
  set _appointments(List<Appointment> value) {
    _$_appointmentsAtom.reportWrite(value, super._appointments, () {
      super._appointments = value;
    });
  }

  late final _$_appointmentsNotConfirmedAtom =
      Atom(name: 'AppointmentBase._appointmentsNotConfirmed', context: context);

  @override
  List<Appointment> get _appointmentsNotConfirmed {
    _$_appointmentsNotConfirmedAtom.reportRead();
    return super._appointmentsNotConfirmed;
  }

  @override
  set _appointmentsNotConfirmed(List<Appointment> value) {
    _$_appointmentsNotConfirmedAtom
        .reportWrite(value, super._appointmentsNotConfirmed, () {
      super._appointmentsNotConfirmed = value;
    });
  }

  late final _$_appointmentsConfirmedAtom =
      Atom(name: 'AppointmentBase._appointmentsConfirmed', context: context);

  @override
  List<Appointment> get _appointmentsConfirmed {
    _$_appointmentsConfirmedAtom.reportRead();
    return super._appointmentsConfirmed;
  }

  @override
  set _appointmentsConfirmed(List<Appointment> value) {
    _$_appointmentsConfirmedAtom
        .reportWrite(value, super._appointmentsConfirmed, () {
      super._appointmentsConfirmed = value;
    });
  }

  late final _$_appointmentsFinishedAtom =
      Atom(name: 'AppointmentBase._appointmentsFinished', context: context);

  @override
  List<Appointment> get _appointmentsFinished {
    _$_appointmentsFinishedAtom.reportRead();
    return super._appointmentsFinished;
  }

  @override
  set _appointmentsFinished(List<Appointment> value) {
    _$_appointmentsFinishedAtom.reportWrite(value, super._appointmentsFinished,
        () {
      super._appointmentsFinished = value;
    });
  }

  late final _$_appointmentsFavoritesAtom =
      Atom(name: 'AppointmentBase._appointmentsFavorites', context: context);

  @override
  List<Appointment> get _appointmentsFavorites {
    _$_appointmentsFavoritesAtom.reportRead();
    return super._appointmentsFavorites;
  }

  @override
  set _appointmentsFavorites(List<Appointment> value) {
    _$_appointmentsFavoritesAtom
        .reportWrite(value, super._appointmentsFavorites, () {
      super._appointmentsFavorites = value;
    });
  }

  late final _$_appointmentAtom =
      Atom(name: 'AppointmentBase._appointment', context: context);

  @override
  Appointment get _appointment {
    _$_appointmentAtom.reportRead();
    return super._appointment;
  }

  @override
  set _appointment(Appointment value) {
    _$_appointmentAtom.reportWrite(value, super._appointment, () {
      super._appointment = value;
    });
  }

  late final _$_appointmentDetailsAtom =
      Atom(name: 'AppointmentBase._appointmentDetails', context: context);

  @override
  Appointment get _appointmentDetails {
    _$_appointmentDetailsAtom.reportRead();
    return super._appointmentDetails;
  }

  @override
  set _appointmentDetails(Appointment value) {
    _$_appointmentDetailsAtom.reportWrite(value, super._appointmentDetails, () {
      super._appointmentDetails = value;
    });
  }

  late final _$assetsForSliderAtom =
      Atom(name: 'AppointmentBase.assetsForSlider', context: context);

  @override
  List<String> get assetsForSlider {
    _$assetsForSliderAtom.reportRead();
    return super.assetsForSlider;
  }

  @override
  set assetsForSlider(List<String> value) {
    _$assetsForSliderAtom.reportWrite(value, super.assetsForSlider, () {
      super.assetsForSlider = value;
    });
  }

  late final _$showUnConfirmedListAtom =
      Atom(name: 'AppointmentBase.showUnConfirmedList', context: context);

  @override
  bool get showUnConfirmedList {
    _$showUnConfirmedListAtom.reportRead();
    return super.showUnConfirmedList;
  }

  @override
  set showUnConfirmedList(bool value) {
    _$showUnConfirmedListAtom.reportWrite(value, super.showUnConfirmedList, () {
      super.showUnConfirmedList = value;
    });
  }

  late final _$isImagePickedAtom =
      Atom(name: 'AppointmentBase.isImagePicked', context: context);

  @override
  bool get isImagePicked {
    _$isImagePickedAtom.reportRead();
    return super.isImagePicked;
  }

  @override
  set isImagePicked(bool value) {
    _$isImagePickedAtom.reportWrite(value, super.isImagePicked, () {
      super.isImagePicked = value;
    });
  }

  late final _$imagePathsAtom =
      Atom(name: 'AppointmentBase.imagePaths', context: context);

  @override
  List<String> get imagePaths {
    _$imagePathsAtom.reportRead();
    return super.imagePaths;
  }

  @override
  set imagePaths(List<String> value) {
    _$imagePathsAtom.reportWrite(value, super.imagePaths, () {
      super.imagePaths = value;
    });
  }

  late final _$_imageListAtom =
      Atom(name: 'AppointmentBase._imageList', context: context);

  @override
  List<dynamic> get _imageList {
    _$_imageListAtom.reportRead();
    return super._imageList;
  }

  @override
  set _imageList(List<dynamic> value) {
    _$_imageListAtom.reportWrite(value, super._imageList, () {
      super._imageList = value;
    });
  }

  late final _$currentSliderIndexAtom =
      Atom(name: 'AppointmentBase.currentSliderIndex', context: context);

  @override
  int get currentSliderIndex {
    _$currentSliderIndexAtom.reportRead();
    return super.currentSliderIndex;
  }

  @override
  set currentSliderIndex(int value) {
    _$currentSliderIndexAtom.reportWrite(value, super.currentSliderIndex, () {
      super.currentSliderIndex = value;
    });
  }

  late final _$addAppointmentAsyncAction =
      AsyncAction('AppointmentBase.addAppointment', context: context);

  @override
  Future<String?> addAppointment() {
    return _$addAppointmentAsyncAction.run(() => super.addAppointment());
  }

  late final _$updateAppointmentAsyncAction =
      AsyncAction('AppointmentBase.updateAppointment', context: context);

  @override
  Future<String?> updateAppointment() {
    return _$updateAppointmentAsyncAction.run(() => super.updateAppointment());
  }

  late final _$fetchAppointmentsAsyncAction =
      AsyncAction('AppointmentBase.fetchAppointments', context: context);

  @override
  Future<String?> fetchAppointments() {
    return _$fetchAppointmentsAsyncAction.run(() => super.fetchAppointments());
  }

  late final _$deleteAppointmentAsyncAction =
      AsyncAction('AppointmentBase.deleteAppointment', context: context);

  @override
  Future<String?> deleteAppointment(String id) {
    return _$deleteAppointmentAsyncAction
        .run(() => super.deleteAppointment(id));
  }

  late final _$pickImageAsyncAction =
      AsyncAction('AppointmentBase.pickImage', context: context);

  @override
  Future<void> pickImage(ImageSource source) {
    return _$pickImageAsyncAction.run(() => super.pickImage(source));
  }

  late final _$uploadImageAsyncAction =
      AsyncAction('AppointmentBase.uploadImage', context: context);

  @override
  Future<String?> uploadImage() {
    return _$uploadImageAsyncAction.run(() => super.uploadImage());
  }

  late final _$deleteImageAsyncAction =
      AsyncAction('AppointmentBase.deleteImage', context: context);

  @override
  Future<String?> deleteImage() {
    return _$deleteImageAsyncAction.run(() => super.deleteImage());
  }

  late final _$AppointmentBaseActionController =
      ActionController(name: 'AppointmentBase', context: context);

  @override
  void setAppointmentDetails(Appointment value) {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setAppointmentDetails');
    try {
      return super.setAppointmentDetails(value);
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDataForEdit() {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setDataForEdit');
    try {
      return super.setDataForEdit();
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsFavorite() {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setIsFavorite');
    try {
      return super.setIsFavorite();
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAllDay(bool value) {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setAllDay');
    try {
      return super.setAllDay(value);
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsConfirmed() {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setIsConfirmed');
    try {
      return super.setIsConfirmed();
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setChosenGender(String value) {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setChosenGender');
    try {
      return super.setChosenGender(value);
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sortAppointmentsByDate() {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.sortAppointmentsByDate');
    try {
      return super.sortAppointmentsByDate();
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sortNotConfirmedAppointments() {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.sortNotConfirmedAppointments');
    try {
      return super.sortNotConfirmedAppointments();
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDataToAppointmentModel({bool isEdit = false}) {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setDataToAppointmentModel');
    try {
      return super.setDataToAppointmentModel(isEdit: isEdit);
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAppointmentFinished(bool value) {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setAppointmentFinished');
    try {
      return super.setAppointmentFinished(value);
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFormattedDateRange(DateRangePickerSelectionChangedArgs args) {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setFormattedDateRange');
    try {
      return super.setFormattedDateRange(args);
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFormattedDateRangeEdit(DateRangePickerSelectionChangedArgs args) {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setFormattedDateRangeEdit');
    try {
      return super.setFormattedDateRangeEdit(args);
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearControllers() {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.clearControllers');
    try {
      return super.clearControllers();
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearControllersEdit() {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.clearControllersEdit');
    try {
      return super.clearControllersEdit();
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShowUnConfirmedList() {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setShowUnConfirmedList');
    try {
      return super.setShowUnConfirmedList();
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrentSliderIndex(int value) {
    final _$actionInfo = _$AppointmentBaseActionController.startAction(
        name: 'AppointmentBase.setCurrentSliderIndex');
    try {
      return super.setCurrentSliderIndex(value);
    } finally {
      _$AppointmentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
appointmentFinished: ${appointmentFinished},
isFavorite: ${isFavorite},
isConfirmed: ${isConfirmed},
allDay: ${allDay},
firstTime: ${firstTime},
lastTime: ${lastTime},
genders: ${genders},
genderValue: ${genderValue},
assetsForSlider: ${assetsForSlider},
showUnConfirmedList: ${showUnConfirmedList},
isImagePicked: ${isImagePicked},
imagePaths: ${imagePaths},
currentSliderIndex: ${currentSliderIndex},
appointments: ${appointments},
appointmentsNotConfirmed: ${appointmentsNotConfirmed},
appointmentsConfirmed: ${appointmentsConfirmed},
appointmentsFinished: ${appointmentsFinished},
appointmentsFavorites: ${appointmentsFavorites},
appointment: ${appointment},
appointmentDetails: ${appointmentDetails},
imageList: ${imageList}
    ''';
  }
}
