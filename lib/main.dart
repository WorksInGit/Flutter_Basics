import 'package:flutter/material.dart';
import 'package:flutter_widgets/coffee_shop/coffee_2.dart';
import 'package:flutter_widgets/coffee_shop/coffee_3.dart';
import 'package:flutter_widgets/coffee_shop/coffee_4.dart';
import 'package:flutter_widgets/coffee_shop/coffee_main.dart';
import 'package:flutter_widgets/floating_action_button/widget_fltbutton.dart';
import 'package:flutter_widgets/flutter_basics/alert_diolog_box.dart';
import 'package:flutter_widgets/flutter_basics/expanded_widget.dart';
import 'package:flutter_widgets/flutter_basics/image_picker.dart';
import 'package:flutter_widgets/flutter_basics/list_view.dart';
import 'package:flutter_widgets/flutter_basics/time_picker.dart';
import 'package:flutter_widgets/flutter_basics/ui_login.dart';
import 'package:flutter_widgets/flutter_basics/widget_card.dart';
import 'package:flutter_widgets/flutter_basics/widget_drawer.dart';
import 'package:flutter_widgets/flutter_basics/widget_drop_down_button.dart';
import 'package:flutter_widgets/flutter_basics/widget_list_view_builder.dart';
import 'package:flutter_widgets/flutter_basics/widget_list_view_seperator.dart';
import 'package:flutter_widgets/flutter_basics/widget_radio_button.dart';
import 'package:flutter_widgets/flutter_basics/widget_snack_bar.dart';
import 'package:flutter_widgets/flutter_basics/widget_stack.dart';
import 'package:flutter_widgets/flutter_basics/widget_tab_bar.dart';
import 'package:flutter_widgets/flutter_basics/widget_text_field.dart';
import 'package:flutter_widgets/flutter_basics/widget_toggle_button.dart';
import 'package:flutter_widgets/fruits_app_ui/fruits_home.dart';
import 'package:flutter_widgets/modern_login_page/modern_home.dart';
import 'package:flutter_widgets/modern_login_page/modern_login.dart';
import 'package:flutter_widgets/navigator/first_page.dart';
import 'package:flutter_widgets/navigator/second_page.dart';
import 'package:flutter_widgets/navigator/third_page.dart';
import 'package:flutter_widgets/ui_car_rent/bottom_nav.dart';
import 'package:flutter_widgets/ui_car_rent/home.dart';
import 'package:flutter_widgets/ui_project_1/home.dart';
import 'package:flutter_widgets/ui_project_1/list_view.dart';
import 'package:flutter_widgets/ui_project_1/list_view_2.dart';
import 'package:flutter_widgets/ui_project_1/login.dart';
import 'package:flutter_widgets/ui_project_1/nav_bar.dart';
import 'package:flutter_widgets/ui_radio_button/ui_radio_button.dart';
import 'package:flutter_widgets/ui_radio_button/ui_radio_button_2.dart';
import 'package:flutter_widgets/ui_task_1/trips_mountain2.dart';
import 'package:flutter_widgets/ui_task_1/trips_moutain.dart';
import 'package:flutter_widgets/ui_task_2/navigation_bar.dart';
import 'package:flutter_widgets/ui_task_2/ui.dart';
import 'package:flutter_widgets/ui_task_3/ui_task_3.0.dart';
import 'package:flutter_widgets/ui_task_3/ui_task_3.1.dart';
import 'package:flutter_widgets/watsapp_ui/whatsapp_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basics',
      home: Login(),
    );
  }
}