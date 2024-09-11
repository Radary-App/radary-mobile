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

  /// `Embark on a Journey of Discovery`
  String get titleOnboarding_1 {
    return Intl.message(
      'Embark on a Journey of Discovery',
      name: 'titleOnboarding_1',
      desc: '',
      args: [],
    );
  }

  /// `Master New Skills with Expert Guidance`
  String get titleOnboarding_2 {
    return Intl.message(
      'Master New Skills with Expert Guidance',
      name: 'titleOnboarding_2',
      desc: '',
      args: [],
    );
  }

  /// `Achieve Your Goals with Confidence`
  String get titleOnboarding_3 {
    return Intl.message(
      'Achieve Your Goals with Confidence',
      name: 'titleOnboarding_3',
      desc: '',
      args: [],
    );
  }

  /// `Explore diverse courses and expand your knowledge horizon.`
  String get descriptionOnboarding_1 {
    return Intl.message(
      'Explore diverse courses and expand your knowledge horizon.',
      name: 'descriptionOnboarding_1',
      desc: '',
      args: [],
    );
  }

  /// `Learn hands-on skills from industry leaders.`
  String get descriptionOnboarding_2 {
    return Intl.message(
      'Learn hands-on skills from industry leaders.',
      name: 'descriptionOnboarding_2',
      desc: '',
      args: [],
    );
  }

  /// `Track your progress and earn certifications.`
  String get descriptionOnboarding_3 {
    return Intl.message(
      'Track your progress and earn certifications.',
      name: 'descriptionOnboarding_3',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
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

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Your learning journey awaits.\n Login now!`
  String get Your_learning_journey_Login {
    return Intl.message(
      'Your learning journey awaits.\n Login now!',
      name: 'Your_learning_journey_Login',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
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

  /// `Wishlist`
  String get Wishlist {
    return Intl.message(
      'Wishlist',
      name: 'Wishlist',
      desc: '',
      args: [],
    );
  }

  /// `Clips`
  String get Clips {
    return Intl.message(
      'Clips',
      name: 'Clips',
      desc: '',
      args: [],
    );
  }

  /// `My courses`
  String get Courses {
    return Intl.message(
      'My courses',
      name: 'Courses',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get Reviews {
    return Intl.message(
      'Reviews',
      name: 'Reviews',
      desc: '',
      args: [],
    );
  }

  /// `Rate Application`
  String get RateApplication {
    return Intl.message(
      'Rate Application',
      name: 'RateApplication',
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

  /// `Security`
  String get Security {
    return Intl.message(
      'Security',
      name: 'Security',
      desc: '',
      args: [],
    );
  }

  /// `Edit your password , name , address , Shoes Size `
  String get EditYourPassword {
    return Intl.message(
      'Edit your password , name , address , Shoes Size ',
      name: 'EditYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `FaceID , Two-step verification`
  String get FaceID {
    return Intl.message(
      'FaceID , Two-step verification',
      name: 'FaceID',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method , Shipping Address , Notifications `
  String get PaymentMethod {
    return Intl.message(
      'Payment Method , Shipping Address , Notifications ',
      name: 'PaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get Currency {
    return Intl.message(
      'Currency',
      name: 'Currency',
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

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Password`
  String get EnterYourPassWord {
    return Intl.message(
      'Enter Your Password',
      name: 'EnterYourPassWord',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your First Name`
  String get EnterYourFirstName {
    return Intl.message(
      'Enter Your First Name',
      name: 'EnterYourFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get LastName {
    return Intl.message(
      'Last Name',
      name: 'LastName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Last Name`
  String get EnterYourLastName {
    return Intl.message(
      'Enter Your Last Name',
      name: 'EnterYourLastName',
      desc: '',
      args: [],
    );
  }

  /// `example@example.com`
  String get EnterYourEmail {
    return Intl.message(
      'example@example.com',
      name: 'EnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get Phone {
    return Intl.message(
      'Phone',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get ResetPassword {
    return Intl.message(
      'Reset Password',
      name: 'ResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Change Phone Number`
  String get ChangePhoneNumber {
    return Intl.message(
      'Change Phone Number',
      name: 'ChangePhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message(
      'Continue',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Enter Code`
  String get EnterCode {
    return Intl.message(
      'Enter Code',
      name: 'EnterCode',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Email Address below. The reset link will be sent thatt email to enter a code  in next screen`
  String get ResetPasswordMessage {
    return Intl.message(
      'Enter your Email Address below. The reset link will be sent thatt email to enter a code  in next screen',
      name: 'ResetPasswordMessage',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get Save {
    return Intl.message(
      'Save',
      name: 'Save',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get NewPassword {
    return Intl.message(
      'New Password',
      name: 'NewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get ConfirmNewPassword {
    return Intl.message(
      'Confirm New Password',
      name: 'ConfirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter new phone Number below , and an SMS will be sent to that number with a code`
  String get ChangePhoneMessage {
    return Intl.message(
      'Enter new phone Number below , and an SMS will be sent to that number with a code',
      name: 'ChangePhoneMessage',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code sent to`
  String get EnterTheCodeSentTo {
    return Intl.message(
      'Enter the code sent to',
      name: 'EnterTheCodeSentTo',
      desc: '',
      args: [],
    );
  }

  /// `Edit Phone Number`
  String get EditPhoneNumber {
    return Intl.message(
      'Edit Phone Number',
      name: 'EditPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t received a code`
  String get DontReceived {
    return Intl.message(
      'Didn’t received a code',
      name: 'DontReceived',
      desc: '',
      args: [],
    );
  }

  /// `resend`
  String get resend {
    return Intl.message(
      'resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Two-Steps Verification`
  String get TwoStepsVerification {
    return Intl.message(
      'Two-Steps Verification',
      name: 'TwoStepsVerification',
      desc: '',
      args: [],
    );
  }

  /// `FaceID`
  String get FaceIDD {
    return Intl.message(
      'FaceID',
      name: 'FaceIDD',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address`
  String get ShippingAddress {
    return Intl.message(
      'Shipping Address',
      name: 'ShippingAddress',
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

  /// `Sign Out`
  String get SignOut {
    return Intl.message(
      'Sign Out',
      name: 'SignOut',
      desc: '',
      args: [],
    );
  }

  /// `Your Currently Points`
  String get YourCurrentlyPoints {
    return Intl.message(
      'Your Currently Points',
      name: 'YourCurrentlyPoints',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get Email_Address {
    return Intl.message(
      'Email Address',
      name: 'Email_Address',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get New_password {
    return Intl.message(
      'New Password',
      name: 'New_password',
      desc: '',
      args: [],
    );
  }

  /// ` Sign Up`
  String get Sign_Up {
    return Intl.message(
      ' Sign Up',
      name: 'Sign_Up',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get Log_In {
    return Intl.message(
      'Log In',
      name: 'Log_In',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get Forget_Password {
    return Intl.message(
      'Forget Password',
      name: 'Forget_Password',
      desc: '',
      args: [],
    );
  }

  /// `By logging, you agree to our  `
  String get by_logging_you {
    return Intl.message(
      'By logging, you agree to our  ',
      name: 'by_logging_you',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get terms_Conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms_Conditions',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `PrivacyPolicy`
  String get privacyPolicy {
    return Intl.message(
      'PrivacyPolicy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Don’t Have An Account? `
  String get Dont_Have {
    return Intl.message(
      'Don’t Have An Account? ',
      name: 'Dont_Have',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account yet?`
  String get Already_have {
    return Intl.message(
      'Already have an account yet?',
      name: 'Already_have',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get FullName {
    return Intl.message(
      'Full Name',
      name: 'FullName',
      desc: '',
      args: [],
    );
  }

  /// `Payment and Shipping Info`
  String get PaymentAndShippingInfo {
    return Intl.message(
      'Payment and Shipping Info',
      name: 'PaymentAndShippingInfo',
      desc: '',
      args: [],
    );
  }

  /// `Delete My Account ?`
  String get DeleteMyAccount {
    return Intl.message(
      'Delete My Account ?',
      name: 'DeleteMyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Deleting your account is permanent and cannot be undone. You will lose all your data and access to the apps features.If youre sure you want to proceed, please confirm by clicking the button below.`
  String get DeleteMessage {
    return Intl.message(
      'Deleting your account is permanent and cannot be undone. You will lose all your data and access to the apps features.If youre sure you want to proceed, please confirm by clicking the button below.',
      name: 'DeleteMessage',
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

  /// `Confirm`
  String get Confirm {
    return Intl.message(
      'Confirm',
      name: 'Confirm',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get Add {
    return Intl.message(
      'Add',
      name: 'Add',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get Full_name {
    return Intl.message(
      'Full Name',
      name: 'Full_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get Last_name {
    return Intl.message(
      'Last Name',
      name: 'Last_name',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get See_All {
    return Intl.message(
      'See All',
      name: 'See_All',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get Categories {
    return Intl.message(
      'Categories',
      name: 'Categories',
      desc: '',
      args: [],
    );
  }

  /// `Recommended For You`
  String get Recommended_For_You {
    return Intl.message(
      'Recommended For You',
      name: 'Recommended_For_You',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get Phone_Number {
    return Intl.message(
      'Phone number',
      name: 'Phone_Number',
      desc: '',
      args: [],
    );
  }

  /// `Begin learning with just a few clicks`
  String get Begin_learning {
    return Intl.message(
      'Begin learning with just a few clicks',
      name: 'Begin_learning',
      desc: '',
      args: [],
    );
  }

  /// `Mohamed Ali`
  String get MohamedAli {
    return Intl.message(
      'Mohamed Ali',
      name: 'MohamedAli',
      desc: '',
      args: [],
    );
  }

  /// `Senior UI UX Designer`
  String get SeniorUIUXDesigner {
    return Intl.message(
      'Senior UI UX Designer',
      name: 'SeniorUIUXDesigner',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get Experience {
    return Intl.message(
      'Experience',
      name: 'Experience',
      desc: '',
      args: [],
    );
  }

  /// `UX Director`
  String get UXDirector {
    return Intl.message(
      'UX Director',
      name: 'UXDirector',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get Google {
    return Intl.message(
      'Google',
      name: 'Google',
      desc: '',
      args: [],
    );
  }

  /// `Ayman Taher`
  String get AymanTaher {
    return Intl.message(
      'Ayman Taher',
      name: 'AymanTaher',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet consectetur. Eu\n arcu scelerisque ultrices varius nam a\n. Nibh sodales faucibus imperdiet bibendum`
  String get TitleOfReview {
    return Intl.message(
      'Lorem ipsum dolor sit amet consectetur. Eu\n arcu scelerisque ultrices varius nam a\n. Nibh sodales faucibus imperdiet bibendum',
      name: 'TitleOfReview',
      desc: '',
      args: [],
    );
  }

  /// `Omar Mowfak`
  String get OmarMowfak {
    return Intl.message(
      'Omar Mowfak',
      name: 'OmarMowfak',
      desc: '',
      args: [],
    );
  }

  /// `Start learning now`
  String get StartlearningNow {
    return Intl.message(
      'Start learning now',
      name: 'StartlearningNow',
      desc: '',
      args: [],
    );
  }

  /// `Elevate your Figma designs effortless...`
  String get ElevateYourFigmaDesignsEffortless {
    return Intl.message(
      'Elevate your Figma designs effortless...',
      name: 'ElevateYourFigmaDesignsEffortless',
      desc: '',
      args: [],
    );
  }

  /// `Enroll Now`
  String get EnrollNow {
    return Intl.message(
      'Enroll Now',
      name: 'EnrollNow',
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
