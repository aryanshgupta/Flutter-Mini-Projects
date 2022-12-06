import 'package:flutter/material.dart';
import 'package:learn_flutter/1.%20business_card.dart';
import 'package:learn_flutter/10.%20text_btn.dart';
import 'package:learn_flutter/11.%20elevated_btn.dart';
import 'package:learn_flutter/12.%20icon_btn.dart';
import 'package:learn_flutter/13.%20container.dart';
import 'package:learn_flutter/14.%20textfield.dart';
import 'package:learn_flutter/15.%20column.dart';
import 'package:learn_flutter/16.%20row.dart';
import 'package:learn_flutter/17.%20list_title.dart';
import 'package:learn_flutter/18.%20listview.dart';
import 'package:learn_flutter/19.%20multiple_list_tile_with_column.dart';
import 'package:learn_flutter/2.%20text.dart';
import 'package:learn_flutter/20.%20multiple_list_tile_with_column_and_single_child_scroll_view.dart';
import 'package:learn_flutter/21.%20edit_text.dart';
import 'package:learn_flutter/22.%20name_list.dart';
import 'package:learn_flutter/23.%20home.dart';
import 'package:learn_flutter/24.%20contact_us.dart';
import 'package:learn_flutter/25.%20bmi.dart';
import 'package:learn_flutter/26.%20load_local_json.dart';
import 'package:learn_flutter/27.%20grid_view_data.dart';
import 'package:learn_flutter/28.%20account.dart';
import 'package:learn_flutter/3.%20scaffold_appbar_center.dart';
import 'package:learn_flutter/29.%20settings.dart';
import 'package:learn_flutter/30.%20navigation_drawer.dart';
import 'package:learn_flutter/34.%20tabs.dart';
import 'package:learn_flutter/35.%20stepper.dart';
import 'package:learn_flutter/46.%20login_1.dart';
import 'package:learn_flutter/36.%20checkbox_radio_slider_switch.dart';
import 'package:learn_flutter/37.%20datetime_picker.dart';
import 'package:learn_flutter/4.%20floating_action_btn.dart';
import 'package:learn_flutter/38.%20simple_dialogue.dart';
import 'package:learn_flutter/39.%20alert_dialogue.dart';
import 'package:learn_flutter/40.%20snackbar.dart';
import 'package:learn_flutter/41.%20bottomsheet.dart';
import 'package:learn_flutter/42.%20opacity_themedata_gradient_color_transform.dart';
import 'package:learn_flutter/43.%20datatable.dart';
import 'package:learn_flutter/44.%20chip.dart';
import 'package:learn_flutter/45.%20popup_menu_btn.dart';
import 'package:learn_flutter/47.%20login_2.dart';
import 'package:learn_flutter/48.%20tip_calculator.dart';
import 'package:learn_flutter/49.%20planet_x.dart';
import 'package:learn_flutter/5.%20styling_floating_action_btn_and_appbar.dart';
import 'package:learn_flutter/51.%20trainee_management.dart';
import 'package:learn_flutter/6.%20text_styling.dart';
import 'package:learn_flutter/7.%20network_image.dart';
import 'package:learn_flutter/8.%20asset_image.dart';
import 'package:learn_flutter/9.%20icon.dart';
import 'homescreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
      routes: {
        HomeScreen.path: (context) => HomeScreen(),
        BusinessCard.path: (context) => BusinessCard(),
        FlutterText.path: (context) => FlutterText(),
        ScaffoldAppBarCenter.path: (context) => ScaffoldAppBarCenter(),
        FloatingActionBtn.path: (context) => FloatingActionBtn(),
        StylingFloatingActionBtnAndAppBar.path: (context) => StylingFloatingActionBtnAndAppBar(),
        TextStyling.path: (context) => TextStyling(),
        FlutterNetworkImage.path: (context) => FlutterNetworkImage(),
        FlutterAssetImage.path: (context) => FlutterAssetImage(),
        FlutterIcon.path: (context) => FlutterIcon(),
        TextBtn.path: (context) => TextBtn(),
        ElevatedBtn.path: (context) => ElevatedBtn(),
        IconBtn.path: (context) => IconBtn(),
        FlutterContainer.path: (context) => FlutterContainer(),
        FlutterTextField.path: (context) => FlutterTextField(),
        FlutterColumn.path: (context) => FlutterColumn(),
        FlutterRow.path: (context) => FlutterRow(),
        FlutterListTile.path: (context) => FlutterListTile(),
        FlutterListView.path: (context) => FlutterListView(),
        MultipleListTileWithColumn.path: (context) => MultipleListTileWithColumn(),
        MultipleListTileWithColumnAndSingleChildScrollView.path: (context) =>
            MultipleListTileWithColumnAndSingleChildScrollView(),
        EditText.path: (context) => EditText(),
        NameList.path: (context) => NameList(),
        Home.path: (context) => Home(),
        ContactUs.path: (context) => ContactUs(),
        Bmi.path: (context) => Bmi(),
        LoadLocalJson.path: (context) => LoadLocalJson(),
        GridViewData.path: (context) => GridViewData(),
        AccountScreen.path: (context) => AccountScreen(),
        SettingsScreen.path: (context) => SettingsScreen(),
        FlutterNavigationDrawer.path: (context) => FlutterNavigationDrawer(),
        FlutterTabs.path: (context) => FlutterTabs(),
        FlutterStepper.path: (context) => FlutterStepper(),
        CheckboxRadioSliderSwitch.path: (context) => CheckboxRadioSliderSwitch(),
        FlutterDateTimePicker.path: (context) => FlutterDateTimePicker(),
        FlutterSimpleDialog.path: (context) => FlutterSimpleDialog(),
        FlutterAlertDialog.path: (context) => FlutterAlertDialog(),
        FlutterSnackBar.path: (context) => FlutterSnackBar(),
        FlutterBottomSheet.path: (context) => FlutterBottomSheet(),
        OpacityThemeDataGradientColorTransform.path: (context) =>
            OpacityThemeDataGradientColorTransform(),
        FlutterDataTable.path: (context) => FlutterDataTable(),
        FlutterChip.path: (context) => FlutterChip(),
        PopupMenuBtn.path: (context) => PopupMenuBtn(),
        LoginScreen1.path: (context) => LoginScreen1(),
        LoginScreen2.path: (context) => LoginScreen2(),
        TipCalculator.path: (context) => TipCalculator(),
        PlanetX.path: (context) => PlanetX(),
        TraineeManagement.path: (context) => TraineeManagement(),
      },
    );
  }
}
