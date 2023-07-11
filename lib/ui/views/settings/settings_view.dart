import 'package:edtech_mobile/ui/common/back_button.dart';
import 'package:edtech_mobile/ui/views/widgets/setting_items.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'settings_viewmodel.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 1, child: backButton()),
              const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(
              'assets/Cool Kids On Bike.png',
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFBEBAB3)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 32,
                      decoration: const BoxDecoration(
                          color: Color(0xFF65AAEA), shape: BoxShape.circle),
                      child: const Icon(Icons.notifications_rounded, color: Colors.white,),
                    ),
                  ),
                  const Expanded(
                    flex: 4,
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: viewModel.switchButton(),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: const Text(
              'Account Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          for (var info in viewModel.settingsInfoList) settingsInfo(info),
        ],
      ),
    );
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}
