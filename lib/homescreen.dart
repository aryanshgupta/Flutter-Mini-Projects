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
import 'package:learn_flutter/25.%20bmi.dart';
import 'package:learn_flutter/26.%20load_local_json.dart';
import 'package:learn_flutter/27.%20grid_view_data.dart';
import 'package:learn_flutter/3.%20scaffold_appbar_center.dart';
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
import 'package:learn_flutter/6.%20text_styling.dart';
import 'package:learn_flutter/7.%20network_image.dart';
import 'package:learn_flutter/8.%20asset_image.dart';
import 'package:learn_flutter/9.%20icon.dart';

class Screen {
  final String title;
  final String path;

  Screen({required this.title, required this.path});
}

class HomeScreen extends StatefulWidget {
  static const String path = "/";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = ScrollController();

  List<Screen> screens = [
    Screen(
      title: 'Business Card',
      path: BusinessCard.path,
    ),
    Screen(
      title: 'Text',
      path: FlutterText.path,
    ),
    Screen(
      title: 'Scaffold, AppBar, Center',
      path: ScaffoldAppBarCenter.path,
    ),
    Screen(
      title: 'Floating Action Button',
      path: FloatingActionBtn.path,
    ),
    Screen(
      title: 'Styling Floating Action Button and AppBar',
      path: StylingFloatingActionBtnAndAppBar.path,
    ),
    Screen(
      title: 'Text Styling',
      path: TextStyling.path,
    ),
    Screen(
      title: 'Network Image',
      path: FlutterNetworkImage.path,
    ),
    Screen(
      title: 'Asset Image',
      path: FlutterAssetImage.path,
    ),
    Screen(
      title: 'Icon',
      path: FlutterIcon.path,
    ),
    Screen(
      title: 'Text Button',
      path: TextBtn.path,
    ),
    Screen(
      title: 'Elevated Button',
      path: ElevatedBtn.path,
    ),
    Screen(
      title: 'Icon Button',
      path: IconBtn.path,
    ),
    Screen(
      title: 'Container',
      path: FlutterContainer.path,
    ),
    Screen(
      title: 'Text Field',
      path: FlutterTextField.path,
    ),
    Screen(
      title: 'Column',
      path: FlutterColumn.path,
    ),
    Screen(
      title: 'Row',
      path: FlutterRow.path,
    ),
    Screen(
      title: 'ListTile',
      path: FlutterListTile.path,
    ),
    Screen(
      title: 'ListView',
      path: FlutterListView.path,
    ),
    Screen(
      title: 'Multiple ListTile With Column',
      path: MultipleListTileWithColumn.path,
    ),
    Screen(
      title: 'Multiple ListTile With Column And SingleChildScrollView',
      path: MultipleListTileWithColumnAndSingleChildScrollView.path,
    ),
    Screen(
      title: 'Edit Text',
      path: EditText.path,
    ),
    Screen(
      title: 'Name List',
      path: NameList.path,
    ),
    Screen(
      title: 'Home',
      path: Home.path,
    ),
    Screen(
      title: 'BMI',
      path: Bmi.path,
    ),
    Screen(
      title: 'Load Local Json',
      path: LoadLocalJson.path,
    ),
    Screen(
      title: 'GridView Data',
      path: GridViewData.path,
    ),
    Screen(
      title: 'Navigation Drawer',
      path: FlutterNavigationDrawer.path,
    ),
    Screen(
      title: 'Tabs',
      path: FlutterTabs.path,
    ),
    Screen(
      title: 'Stepper',
      path: FlutterStepper.path,
    ),
    Screen(
      title: 'Checkbox Radio Slider Switch',
      path: CheckboxRadioSliderSwitch.path,
    ),
    Screen(
      title: 'DateTime Picker',
      path: FlutterDateTimePicker.path,
    ),
    Screen(
      title: 'Simple Dialog',
      path: FlutterSimpleDialog.path,
    ),
    Screen(
      title: 'Alert Dialog',
      path: FlutterAlertDialog.path,
    ),
    Screen(
      title: 'SnackBar',
      path: FlutterSnackBar.path,
    ),
    Screen(
      title: 'BottomSheet',
      path: FlutterBottomSheet.path,
    ),
    Screen(
      title: 'Opacity, ThemeData, Gradient Color, Transform',
      path: OpacityThemeDataGradientColorTransform.path,
    ),
    Screen(
      title: 'DataTable',
      path: FlutterDataTable.path,
    ),
    Screen(
      title: 'Chip',
      path: FlutterChip.path,
    ),
    Screen(
      title: 'Popup Menu Button',
      path: PopupMenuBtn.path,
    ),
    Screen(
      title: 'Login Screen 1',
      path: LoginScreen1.path,
    ),
    Screen(
      title: 'Login Screen 2',
      path: LoginScreen2.path,
    ),
    Screen(
      title: 'Tip Calculator',
      path: TipCalculator.path,
    ),
    Screen(
      title: 'PlanetX',
      path: PlanetX.path,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
      ),
      body: Scrollbar(
        controller: scrollController,
        thumbVisibility: true,
        child: ListView.separated(
          controller: scrollController,
          itemBuilder: (context, index) {
            int reversedIndex = screens.length - 1 - index;

            return ListTile(
              title: Text("${reversedIndex + 1}. ${screens[reversedIndex].title}"),
              subtitle: Text("Tap to view"),
              onTap: () {
                Navigator.of(context).pushNamed(screens[reversedIndex].path);
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: screens.length,
        ),
      ),
    );
  }
}
