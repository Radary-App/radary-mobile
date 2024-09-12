// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Emergency`
  String get Emergency {
    return Intl.message(
      'Emergency',
      name: 'Emergency',
      desc: '',
      args: [],
    );
  }

  /// `For Accessibility`
  String get ForAccessibility {
    return Intl.message(
      'For Accessibility',
      name: 'ForAccessibility',
      desc: '',
      args: [],
    );
  }

  /// `Accessibility `
  String get Accessibility {
    return Intl.message(
      'Accessibility ',
      name: 'Accessibility',
      desc: '',
      args: [],
    );
  }

  /// `These features are for individuals with low vision, color blindness, poor vision, etc.`
  String get AccessibilityDescription {
    return Intl.message(
      'These features are for individuals with low vision, color blindness, poor vision, etc.',
      name: 'AccessibilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Turn on Sound `
  String get SoundOn {
    return Intl.message(
      'Turn on Sound ',
      name: 'SoundOn',
      desc: '',
      args: [],
    );
  }

  /// `Color Change and Contrast`
  String get ColorChangeAndContrast {
    return Intl.message(
      'Color Change and Contrast',
      name: 'ColorChangeAndContrast',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get Skip {
    return Intl.message(
      'Skip',
      name: 'Skip',
      desc: '',
      args: [],
    );
  }

  /// ` You can report accidents and problems you encounter with one click`
  String get HowItWorks {
    return Intl.message(
      ' You can report accidents and problems you encounter with one click',
      name: 'HowItWorks',
      desc: '',
      args: [],
    );
  }

  /// `Log in `
  String get Log_In {
    return Intl.message(
      'Log in ',
      name: 'Log_In',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number `
  String get Phone_Number {
    return Intl.message(
      'Phone Number ',
      name: 'Phone_Number',
      desc: '',
      args: [],
    );
  }

  /// `Password `
  String get Password {
    return Intl.message(
      'Password ',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get ForgetPassword {
    return Intl.message(
      'Forget Password?',
      name: 'ForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get OR {
    return Intl.message(
      'Or',
      name: 'OR',
      desc: '',
      args: [],
    );
  }

  /// `Log in `
  String get Log_InBtn {
    return Intl.message(
      'Log in ',
      name: 'Log_InBtn',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get Dont_Have {
    return Intl.message(
      'Don\'t have an account?',
      name: 'Dont_Have',
      desc: '',
      args: [],
    );
  }

  /// ` Sign Up  `
  String get Sign_UpBtn {
    return Intl.message(
      ' Sign Up  ',
      name: 'Sign_UpBtn',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone number`
  String get EnterYourPhoneNumber {
    return Intl.message(
      'Enter phone number',
      name: 'EnterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `+20 1*********`
  String get PhoneNumberExample {
    return Intl.message(
      '+20 1*********',
      name: 'PhoneNumberExample',
      desc: '',
      args: [],
    );
  }

  /// `Send code `
  String get SendCode {
    return Intl.message(
      'Send code ',
      name: 'SendCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm code `
  String get ConfirmCode {
    return Intl.message(
      'Confirm code ',
      name: 'ConfirmCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm code `
  String get ConfirmCodeBtn {
    return Intl.message(
      'Confirm code ',
      name: 'ConfirmCodeBtn',
      desc: '',
      args: [],
    );
  }

  /// `Resend `
  String get resend {
    return Intl.message(
      'Resend ',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password `
  String get ResetPassword {
    return Intl.message(
      'Reset Password ',
      name: 'ResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get EnterYourPassWord {
    return Intl.message(
      'Enter new password',
      name: 'EnterYourPassWord',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password`
  String get ConfirmPassword {
    return Intl.message(
      'Confirm new password',
      name: 'ConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `next`
  String get next {
    return Intl.message(
      'next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get Sign_UP {
    return Intl.message(
      'Sign up',
      name: 'Sign_UP',
      desc: '',
      args: [],
    );
  }

  /// `phone number `
  String get Phone {
    return Intl.message(
      'phone number ',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `Email (optional)`
  String get EnterYourEmail {
    return Intl.message(
      'Email (optional)',
      name: 'EnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get PassWord {
    return Intl.message(
      'Password',
      name: 'PassWord',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get FirstName {
    return Intl.message(
      'First Name',
      name: 'FirstName',
      desc: '',
      args: [],
    );
  }

  /// `Second Name`
  String get LastName {
    return Intl.message(
      'Second Name',
      name: 'LastName',
      desc: '',
      args: [],
    );
  }

  /// `Governorate`
  String get Governorate {
    return Intl.message(
      'Governorate',
      name: 'Governorate',
      desc: '',
      args: [],
    );
  }

  /// `Center`
  String get Center {
    return Intl.message(
      'Center',
      name: 'Center',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth `
  String get BirthDate {
    return Intl.message(
      'Date of Birth ',
      name: 'BirthDate',
      desc: '',
      args: [],
    );
  }

  /// `day`
  String get Day {
    return Intl.message(
      'day',
      name: 'Day',
      desc: '',
      args: [],
    );
  }

  /// `month`
  String get Month {
    return Intl.message(
      'month',
      name: 'Month',
      desc: '',
      args: [],
    );
  }

  /// `year`
  String get Year {
    return Intl.message(
      'year',
      name: 'Year',
      desc: '',
      args: [],
    );
  }

  /// `A text message has been sent to this number containing a four-digit code, enter this code here`
  String get ChangePhoneMessage {
    return Intl.message(
      'A text message has been sent to this number containing a four-digit code, enter this code here',
      name: 'ChangePhoneMessage',
      desc: '',
      args: [],
    );
  }

  /// `Welcome,....`
  String get WelcomeMessage {
    return Intl.message(
      'Welcome,....',
      name: 'WelcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Report an accident`
  String get AccidentReport {
    return Intl.message(
      'Report an accident',
      name: 'AccidentReport',
      desc: '',
      args: [],
    );
  }

  /// `Report an issue`
  String get IssuesReport {
    return Intl.message(
      'Report an issue',
      name: 'IssuesReport',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `My Reports`
  String get MyReportsBtn {
    return Intl.message(
      'My Reports',
      name: 'MyReportsBtn',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get MyProfileBtn {
    return Intl.message(
      'My profile',
      name: 'MyProfileBtn',
      desc: '',
      args: [],
    );
  }

  /// `Allow access to camera`
  String get Permission {
    return Intl.message(
      'Allow access to camera',
      name: 'Permission',
      desc: '',
      args: [],
    );
  }

  /// `While using the app`
  String get AllowDuringUsingApp {
    return Intl.message(
      'While using the app',
      name: 'AllowDuringUsingApp',
      desc: '',
      args: [],
    );
  }

  /// `Ask next time or when I share`
  String get DemandEveryTime {
    return Intl.message(
      'Ask next time or when I share',
      name: 'DemandEveryTime',
      desc: '',
      args: [],
    );
  }

  /// `Never`
  String get NeverAllow {
    return Intl.message(
      'Never',
      name: 'NeverAllow',
      desc: '',
      args: [],
    );
  }

  /// `Add location`
  String get PhotoAddress {
    return Intl.message(
      'Add location',
      name: 'PhotoAddress',
      desc: '',
      args: [],
    );
  }

  /// `Add description`
  String get PhotoDescription {
    return Intl.message(
      'Add description',
      name: 'PhotoDescription',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get Time {
    return Intl.message(
      'Time',
      name: 'Time',
      desc: '',
      args: [],
    );
  }

  /// `Select Time `
  String get TimeSelect {
    return Intl.message(
      'Select Time ',
      name: 'TimeSelect',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get ConfirmBtn {
    return Intl.message(
      'Confirm',
      name: 'ConfirmBtn',
      desc: '',
      args: [],
    );
  }

  /// `End`
  String get EndBtn {
    return Intl.message(
      'End',
      name: 'EndBtn',
      desc: '',
      args: [],
    );
  }

  /// `To continue Reporting `
  String get ForContinueReporting {
    return Intl.message(
      'To continue Reporting ',
      name: 'ForContinueReporting',
      desc: '',
      args: [],
    );
  }

  /// `Last Reports`
  String get LastReports {
    return Intl.message(
      'Last Reports',
      name: 'LastReports',
      desc: '',
      args: [],
    );
  }

  /// `Report number 1`
  String get FirstReport {
    return Intl.message(
      'Report number 1',
      name: 'FirstReport',
      desc: '',
      args: [],
    );
  }

  /// `Report number 2`
  String get SecondReport {
    return Intl.message(
      'Report number 2',
      name: 'SecondReport',
      desc: '',
      args: [],
    );
  }

  /// `Report number 3`
  String get ThirdReport {
    return Intl.message(
      'Report number 3',
      name: 'ThirdReport',
      desc: '',
      args: [],
    );
  }

  /// `My reports`
  String get MyReports {
    return Intl.message(
      'My reports',
      name: 'MyReports',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get All {
    return Intl.message(
      'All',
      name: 'All',
      desc: '',
      args: [],
    );
  }

  /// `Accidents`
  String get Accidents {
    return Intl.message(
      'Accidents',
      name: 'Accidents',
      desc: '',
      args: [],
    );
  }

  /// `Issues`
  String get Issues {
    return Intl.message(
      'Issues',
      name: 'Issues',
      desc: '',
      args: [],
    );
  }

  /// `Continue Reporting `
  String get ContinueReporting {
    return Intl.message(
      'Continue Reporting ',
      name: 'ContinueReporting',
      desc: '',
      args: [],
    );
  }

  /// `Report Date `
  String get ReportDate {
    return Intl.message(
      'Report Date ',
      name: 'ReportDate',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get Address {
    return Intl.message(
      'Address',
      name: 'Address',
      desc: '',
      args: [],
    );
  }

  /// `Report Status `
  String get ReportStatus {
    return Intl.message(
      'Report Status ',
      name: 'ReportStatus',
      desc: '',
      args: [],
    );
  }

  /// `Your report has reached the competent authorities, the problem is being resolved`
  String get ReportDoneMessage {
    return Intl.message(
      'Your report has reached the competent authorities, the problem is being resolved',
      name: 'ReportDoneMessage',
      desc: '',
      args: [],
    );
  }

  /// `The problem has been resolved successfully!`
  String get ReportSuccess {
    return Intl.message(
      'The problem has been resolved successfully!',
      name: 'ReportSuccess',
      desc: '',
      args: [],
    );
  }

  /// `For Suggestions `
  String get Suggestion {
    return Intl.message(
      'For Suggestions ',
      name: 'Suggestion',
      desc: '',
      args: [],
    );
  }

  /// `هDid you find difficulty to report the problem?`
  String get Feedback1 {
    return Intl.message(
      'هDid you find difficulty to report the problem?',
      name: 'Feedback1',
      desc: '',
      args: [],
    );
  }

  /// `Is the problem already solved?`
  String get Feedback2 {
    return Intl.message(
      'Is the problem already solved?',
      name: 'Feedback2',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get Yes {
    return Intl.message(
      'Yes',
      name: 'Yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get No {
    return Intl.message(
      'No',
      name: 'No',
      desc: '',
      args: [],
    );
  }

  /// `Suggestions`
  String get Suggestions {
    return Intl.message(
      'Suggestions',
      name: 'Suggestions',
      desc: '',
      args: [],
    );
  }

  /// `Thanks`
  String get ThankYou {
    return Intl.message(
      'Thanks',
      name: 'ThankYou',
      desc: '',
      args: [],
    );
  }

  /// `Your Suggestions help us to improve our services!`
  String get ThankMsg {
    return Intl.message(
      'Your Suggestions help us to improve our services!',
      name: 'ThankMsg',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get MyProfile {
    return Intl.message(
      'My profile',
      name: 'MyProfile',
      desc: '',
      args: [],
    );
  }

  /// `name`
  String get name {
    return Intl.message(
      'name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information `
  String get PersonalInformation {
    return Intl.message(
      'Personal Information ',
      name: 'PersonalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get SettingsBtn {
    return Intl.message(
      'Settings',
      name: 'SettingsBtn',
      desc: '',
      args: [],
    );
  }

  /// `Help and Support`
  String get SupportAndHelpBtn {
    return Intl.message(
      'Help and Support',
      name: 'SupportAndHelpBtn',
      desc: '',
      args: [],
    );
  }

  /// `Sign out `
  String get SignOutBtn {
    return Intl.message(
      'Sign out ',
      name: 'SignOutBtn',
      desc: '',
      args: [],
    );
  }

  /// `Sign out `
  String get SignOut {
    return Intl.message(
      'Sign out ',
      name: 'SignOut',
      desc: '',
      args: [],
    );
  }

  /// `You will need to enter your username and password the next time you want to log in`
  String get SignOutMsg {
    return Intl.message(
      'You will need to enter your username and password the next time you want to log in',
      name: 'SignOutMsg',
      desc: '',
      args: [],
    );
  }

  /// `Your name`
  String get EnterName {
    return Intl.message(
      'Your name',
      name: 'EnterName',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get EnterPhone {
    return Intl.message(
      'Phone number',
      name: 'EnterPhone',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get EnterEmail {
    return Intl.message(
      'E-mail',
      name: 'EnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Choose language`
  String get ChooseLanguage {
    return Intl.message(
      'Choose language',
      name: 'ChooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `اللغة العربية`
  String get Arabic {
    return Intl.message(
      'اللغة العربية',
      name: 'Arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get English {
    return Intl.message(
      'English',
      name: 'English',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get DarkMode {
    return Intl.message(
      'Dark Mode',
      name: 'DarkMode',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get NightMode {
    return Intl.message(
      'Light Mode',
      name: 'NightMode',
      desc: '',
      args: [],
    );
  }

  /// `Device Setting`
  String get DeviceSettings {
    return Intl.message(
      'Device Setting',
      name: 'DeviceSettings',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get Notifications {
    return Intl.message(
      'Notifications',
      name: 'Notifications',
      desc: '',
      args: [],
    );
  }

  /// `Notifications from Radary`
  String get NotificationsFromRadary {
    return Intl.message(
      'Notifications from Radary',
      name: 'NotificationsFromRadary',
      desc: '',
      args: [],
    );
  }

  /// `Application Updates `
  String get AppUpdates {
    return Intl.message(
      'Application Updates ',
      name: 'AppUpdates',
      desc: '',
      args: [],
    );
  }

  /// `Sound`
  String get Sound {
    return Intl.message(
      'Sound',
      name: 'Sound',
      desc: '',
      args: [],
    );
  }

  /// `Vibration`
  String get Vibration {
    return Intl.message(
      'Vibration',
      name: 'Vibration',
      desc: '',
      args: [],
    );
  }

  /// `Permissions`
  String get Permissions {
    return Intl.message(
      'Permissions',
      name: 'Permissions',
      desc: '',
      args: [],
    );
  }

  /// `Allow access to your location`
  String get LocationAccess {
    return Intl.message(
      'Allow access to your location',
      name: 'LocationAccess',
      desc: '',
      args: [],
    );
  }

  /// `Allow access to camera`
  String get CameraAccess {
    return Intl.message(
      'Allow access to camera',
      name: 'CameraAccess',
      desc: '',
      args: [],
    );
  }

  /// `Allow access to your photos`
  String get PhotosAccess {
    return Intl.message(
      'Allow access to your photos',
      name: 'PhotosAccess',
      desc: '',
      args: [],
    );
  }

  /// `Accessibility`
  String get AccessibilityBtn {
    return Intl.message(
      'Accessibility',
      name: 'AccessibilityBtn',
      desc: '',
      args: [],
    );
  }

  /// `Turn on Accessibility`
  String get AccessibilityTurnOn {
    return Intl.message(
      'Turn on Accessibility',
      name: 'AccessibilityTurnOn',
      desc: '',
      args: [],
    );
  }

  /// `Turn on sound`
  String get SoundBtn {
    return Intl.message(
      'Turn on sound',
      name: 'SoundBtn',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get DeleteAccountBtn {
    return Intl.message(
      'Delete Account',
      name: 'DeleteAccountBtn',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get DeleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'DeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `If you need to delete your account, we would like you to provide the reason`
  String get DeleteAccountMsg {
    return Intl.message(
      'If you need to delete your account, we would like you to provide the reason',
      name: 'DeleteAccountMsg',
      desc: '',
      args: [],
    );
  }

  /// `I no longer use the service`
  String get Reason1 {
    return Intl.message(
      'I no longer use the service',
      name: 'Reason1',
      desc: '',
      args: [],
    );
  }

  /// `Privacy concerns`
  String get Reason2 {
    return Intl.message(
      'Privacy concerns',
      name: 'Reason2',
      desc: '',
      args: [],
    );
  }

  /// `Difficulty navigating the platform`
  String get Reason3 {
    return Intl.message(
      'Difficulty navigating the platform',
      name: 'Reason3',
      desc: '',
      args: [],
    );
  }

  /// `Lots of notifications`
  String get Reason4 {
    return Intl.message(
      'Lots of notifications',
      name: 'Reason4',
      desc: '',
      args: [],
    );
  }

  /// `Personal reasons`
  String get Reason5 {
    return Intl.message(
      'Personal reasons',
      name: 'Reason5',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get Reason6 {
    return Intl.message(
      'Other',
      name: 'Reason6',
      desc: '',
      args: [],
    );
  }

  /// `Write message here`
  String get OtherMsg {
    return Intl.message(
      'Write message here',
      name: 'OtherMsg',
      desc: '',
      args: [],
    );
  }

  /// `0/50`
  String get Limit {
    return Intl.message(
      '0/50',
      name: 'Limit',
      desc: '',
      args: [],
    );
  }

  /// `Help and support`
  String get SupportAndHelp {
    return Intl.message(
      'Help and support',
      name: 'SupportAndHelp',
      desc: '',
      args: [],
    );
  }

  /// `How does the app use my location?`
  String get Question1 {
    return Intl.message(
      'How does the app use my location?',
      name: 'Question1',
      desc: '',
      args: [],
    );
  }

  /// `What types of problems can I report?`
  String get Question2 {
    return Intl.message(
      'What types of problems can I report?',
      name: 'Question2',
      desc: '',
      args: [],
    );
  }

  /// `How long does it take to solve the problem?`
  String get Question3 {
    return Intl.message(
      'How long does it take to solve the problem?',
      name: 'Question3',
      desc: '',
      args: [],
    );
  }

  /// `Do I need an internet connection to file a report?`
  String get Question4 {
    return Intl.message(
      'Do I need an internet connection to file a report?',
      name: 'Question4',
      desc: '',
      args: [],
    );
  }

  /// `How can I contact the technical support team?`
  String get Question5 {
    return Intl.message(
      'How can I contact the technical support team?',
      name: 'Question5',
      desc: '',
      args: [],
    );
  }

  /// `The app uses geolocation to pinpoint the exact location of the problem, helping stakeholders find and address the problem faster. Your location data is used only for reporting purposes and is not shared with third parties`
  String get Answer1 {
    return Intl.message(
      'The app uses geolocation to pinpoint the exact location of the problem, helping stakeholders find and address the problem faster. Your location data is used only for reporting purposes and is not shared with third parties',
      name: 'Answer1',
      desc: '',
      args: [],
    );
  }

  /// `You can report a wide range of local problems, including potholes, broken light poles, graffiti, illegal waste disposal, damaged signs, broken traffic signals, and more.`
  String get Answer2 {
    return Intl.message(
      'You can report a wide range of local problems, including potholes, broken light poles, graffiti, illegal waste disposal, damaged signs, broken traffic signals, and more.',
      name: 'Answer2',
      desc: '',
      args: [],
    );
  }

  /// `How long a problem can be resolved depending on its nature, urgency, and local capacity. The application helps prioritize problems through the voting system, but the final resolution period is determined by the concerned authorities...`
  String get Answer3 {
    return Intl.message(
      'How long a problem can be resolved depending on its nature, urgency, and local capacity. The application helps prioritize problems through the voting system, but the final resolution period is determined by the concerned authorities...',
      name: 'Answer3',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Radari Mobile app is completely free to download and use. There are no hidden fees for reporting problems or using any of its features.`
  String get Answer4 {
    return Intl.message(
      'Yes, Radari Mobile app is completely free to download and use. There are no hidden fees for reporting problems or using any of its features.',
      name: 'Answer4',
      desc: '',
      args: [],
    );
  }

  /// `You can contact the technical support team by sending an email to the address provided for support. We are here to help you at any time.`
  String get Answer5 {
    return Intl.message(
      'You can contact the technical support team by sending an email to the address provided for support. We are here to help you at any time.',
      name: 'Answer5',
      desc: '',
      args: [],
    );
  }

  /// `Deleting your account will remove all your information from our database. And this cannot be undone.`
  String get DeleteAccountMessage {
    return Intl.message(
      'Deleting your account will remove all your information from our database. And this cannot be undone.',
      name: 'DeleteAccountMessage',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account `
  String get ConfirmDelete {
    return Intl.message(
      'Delete Account ',
      name: 'ConfirmDelete',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
