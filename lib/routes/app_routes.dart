import 'package:immo_scanner/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:immo_scanner/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:immo_scanner/presentation/splash_screen/splash_screen.dart';
import 'package:immo_scanner/presentation/splash_screen/binding/splash_binding.dart';
import 'package:immo_scanner/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:immo_scanner/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:immo_scanner/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:immo_scanner/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:immo_scanner/presentation/home_container_screen/home_container_screen.dart';
import 'package:immo_scanner/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:immo_scanner/presentation/home_alarm_screen/home_alarm_screen.dart';
import 'package:immo_scanner/presentation/home_alarm_screen/binding/home_alarm_binding.dart';
import 'package:immo_scanner/presentation/notification_screen/notification_screen.dart';
import 'package:immo_scanner/presentation/notification_screen/binding/notification_binding.dart';
import 'package:immo_scanner/presentation/notification_empty_states_screen/notification_empty_states_screen.dart';
import 'package:immo_scanner/presentation/notification_empty_states_screen/binding/notification_empty_states_binding.dart';
import 'package:immo_scanner/presentation/my_home_empty_screen/my_home_empty_screen.dart';
import 'package:immo_scanner/presentation/my_home_empty_screen/binding/my_home_empty_binding.dart';
import 'package:immo_scanner/presentation/home_listing_screen/binding/home_listing_binding.dart';
import 'package:immo_scanner/presentation/home_listing_satelite_screen/home_listing_satelite_screen.dart';
import 'package:immo_scanner/presentation/home_listing_satelite_screen/binding/home_listing_satelite_binding.dart';
import 'package:immo_scanner/presentation/home_listing_draw_screen/home_listing_draw_screen.dart';
import 'package:immo_scanner/presentation/home_listing_draw_screen/binding/home_listing_draw_binding.dart';
import 'package:immo_scanner/presentation/filter_screen/filter_screen.dart';
import 'package:immo_scanner/presentation/filter_screen/binding/filter_binding.dart';
import 'package:immo_scanner/presentation/product_details_screen/product_details_screen.dart';
import 'package:immo_scanner/presentation/product_details_screen/binding/product_details_binding.dart';
import 'package:immo_scanner/presentation/pick_date_screen/pick_date_screen.dart';
import 'package:immo_scanner/presentation/pick_date_screen/binding/pick_date_binding.dart';
import 'package:immo_scanner/presentation/verify_phone_number_screen/verify_phone_number_screen.dart';
import 'package:immo_scanner/presentation/verify_phone_number_screen/binding/verify_phone_number_binding.dart';
import 'package:immo_scanner/presentation/select_virtual_app_screen/select_virtual_app_screen.dart';
import 'package:immo_scanner/presentation/select_virtual_app_screen/binding/select_virtual_app_binding.dart';
import 'package:immo_scanner/presentation/select_app_alarm_screen/select_app_alarm_screen.dart';
import 'package:immo_scanner/presentation/select_app_alarm_screen/binding/select_app_alarm_binding.dart';
import 'package:immo_scanner/presentation/confirm_request_screen/confirm_request_screen.dart';
import 'package:immo_scanner/presentation/confirm_request_screen/binding/confirm_request_binding.dart';
import 'package:immo_scanner/presentation/settings_screen/settings_screen.dart';
import 'package:immo_scanner/presentation/settings_screen/binding/settings_binding.dart';
import 'package:immo_scanner/presentation/faqs_get_help_screen/faqs_get_help_screen.dart';
import 'package:immo_scanner/presentation/faqs_get_help_screen/binding/faqs_get_help_binding.dart';
import 'package:immo_scanner/presentation/past_tours_screen/past_tours_screen.dart';
import 'package:immo_scanner/presentation/past_tours_screen/binding/past_tours_binding.dart';
import 'package:immo_scanner/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:immo_scanner/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:immo_scanner/presentation/recently_views_screen/recently_views_screen.dart';
import 'package:immo_scanner/presentation/recently_views_screen/binding/recently_views_binding.dart';
import 'package:immo_scanner/presentation/favorite_screen/favorite_screen.dart';
import 'package:immo_scanner/presentation/favorite_screen/binding/favorite_binding.dart';
import 'package:immo_scanner/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:immo_scanner/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homeAlarmScreen = '/home_alarm_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationEmptyStatesScreen =
      '/notification_empty_states_screen';

  static const String messagePage = '/message_page';

  static const String messageChatScreen = '/message_chat_screen';

  static const String myHomeEmptyScreen = '/my_home_empty_screen';

  static const String myHomePage = '/my_home_page';

  static const String addNewPropertyAddressScreen =
      '/add_new_property_address_screen';

  static const String addNewPropertyMeetWithAAgentScreen =
      '/add_new_property_meet_with_a_agent_screen';

  static const String addNewPropertyTimeToSellScreen =
      '/add_new_property_time_to_sell_screen';

  static const String addNewPropertyReasonSellingHomeScreen =
      '/add_new_property_reason_selling_home_screen';

  static const String addNewPropertyDecsriptionScreen =
      '/add_new_property_decsription_screen';

  static const String addNewPropertyHomeFactsScreen =
      '/add_new_property_home_facts_screen';

  static const String addNewPropertyContactScreen =
      '/add_new_property_contact_screen';

  static const String addNewPropertySelectAmenitiesScreen =
      '/add_new_property_select_amenities_screen';

  static const String addNewPropertyDetailsScreen =
      '/add_new_property_details_screen';

  static const String homeListingScreen = '/home_listing_screen';

  static const String homeListingSateliteScreen =
      '/home_listing_satelite_screen';

  static const String homeListingDrawScreen = '/home_listing_draw_screen';

  static const String filterScreen = '/filter_screen';

  static const String homeSearchPage = '/home_search_page';

  static const String productDetailsScreen = '/product_details_screen';

  static const String pickDateScreen = '/pick_date_screen';

  static const String verifyPhoneNumberScreen = '/verify_phone_number_screen';

  static const String selectVirtualAppScreen = '/select_virtual_app_screen';

  static const String selectAppAlarmScreen = '/select_app_alarm_screen';

  static const String confirmRequestScreen = '/confirm_request_screen';

  static const String profilePage = '/profile_page';

  static const String settingsScreen = '/settings_screen';

  static const String faqsGetHelpScreen = '/faqs_get_help_screen';

  static const String pastToursScreen = '/past_tours_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String recentlyViewsScreen = '/recently_views_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => const SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => const SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: homeAlarmScreen,
      page: () => HomeAlarmScreen(),
      bindings: [
        HomeAlarmBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: notificationEmptyStatesScreen,
      page: () => NotificationEmptyStatesScreen(),
      bindings: [
        NotificationEmptyStatesBinding(),
      ],
    ),
    GetPage(
      name: myHomeEmptyScreen,
      page: () => MyHomeEmptyScreen(),
      bindings: [
        MyHomeEmptyBinding(),
      ],
    ),
    GetPage(
      name: homeListingSateliteScreen,
      page: () => HomeListingSateliteScreen(),
      bindings: [
        HomeListingSateliteBinding(),
      ],
    ),
    GetPage(
      name: homeListingDrawScreen,
      page: () => HomeListingDrawScreen(),
      bindings: [
        HomeListingDrawBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: productDetailsScreen,
      page: () => ProductDetailsScreen(),
      bindings: [
        ProductDetailsBinding(),
      ],
    ),
    GetPage(
      name: pickDateScreen,
      page: () => PickDateScreen(),
      bindings: [
        PickDateBinding(),
      ],
    ),
    GetPage(
      name: verifyPhoneNumberScreen,
      page: () => VerifyPhoneNumberScreen(),
      bindings: [
        VerifyPhoneNumberBinding(),
      ],
    ),
    GetPage(
      name: selectVirtualAppScreen,
      page: () => SelectVirtualAppScreen(),
      bindings: [
        SelectVirtualAppBinding(),
      ],
    ),
    GetPage(
      name: selectAppAlarmScreen,
      page: () => SelectAppAlarmScreen(),
      bindings: [
        SelectAppAlarmBinding(),
      ],
    ),
    GetPage(
      name: confirmRequestScreen,
      page: () => ConfirmRequestScreen(),
      bindings: [
        ConfirmRequestBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: faqsGetHelpScreen,
      page: () => FaqsGetHelpScreen(),
      bindings: [
        FaqsGetHelpBinding(),
      ],
    ),
    GetPage(
      name: pastToursScreen,
      page: () => PastToursScreen(),
      bindings: [
        PastToursBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: recentlyViewsScreen,
      page: () => RecentlyViewsScreen(),
      bindings: [
        RecentlyViewsBinding(),
      ],
    ),
    GetPage(
      name: favoriteScreen,
      page: () => FavoriteScreen(),
      bindings: [
        FavoriteBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
