import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:scheduler_mobx/app/utils/extensions/string_extensions.dart';
import 'package:scheduler_mobx/app/utils/language/language_strings.dart';
import 'package:scheduler_mobx/generated/assets.dart';
import 'package:scheduler_mobx/routing/routes.dart';

import '../../../theme/color_helper.dart';
import '../../../widgets/dialogs/simple_dialog.dart';
import '../../locator.dart';
import '../../stores/appointment_store/appointment_store.dart';

class AppointmentInfoPage extends StatelessWidget {
  final AppointmentStore appointmentStore = locator<AppointmentStore>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 30),
          _buildHeadline(context),
          _buildMandatoryInfoSegment(context),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 24), child: Divider()),
          const SizedBox(height: 20),
          _buildOptionalInfoSegment(context),
          const SizedBox(height: 30),
          _buildDeleteIcon(context),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildDeleteIcon(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customSimpleDialog(
          context,
          buttonText: Language.sh_delete_cancel,
          buttonTwoText: Language.common_ok,
          onButtonTwoPressed: () => appointmentStore.deleteAppointment(appointmentStore.appointmentDetails.id!).then(
              (String? value) => Navigator.pushNamedAndRemoveUntil(context, Home, (Route<dynamic> route) => false)),
          onButtonPressed: () => Navigator.of(context).pop(),
          title: Language.sh_delete_title,
          content: Language.sh_delete_subtitle,
        );
      },
      child: Icon(
        Icons.delete,
        color: ColorHelper.towerRed.color,
        size: 35,
      ),
    );
  }

  Widget _buildHeadline(BuildContext context) {
    return const Column(
      children: <Widget>[
        Text(Language.ad_info_headline, style: TextStyle(fontSize: 24)),
        Padding(padding: EdgeInsets.symmetric(horizontal: 50), child: Divider()),
      ],
    );
  }

  Widget _buildMandatoryInfoSegment(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Observer(
        builder: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            _buildDescription(context),
            const SizedBox(height: 20),
            _buildInfoTile(context, appointmentStore.returnGenderImage(appointmentStore.appointmentDetails.gender!),
                appointmentStore.appointmentDetails.name ?? ''),
            _buildInfoTile(context, Assets.assetsEmail, appointmentStore.appointmentDetails.email ?? '',
                onTap: () => appointmentStore.appointmentDetails.email!.emailTo()),
            _buildInfoTile(context, Assets.assetsPhone, appointmentStore.appointmentDetails.phone ?? '',
                onTap: () => appointmentStore.appointmentDetails.phone!.makePhoneCall()),
            _buildInfoTile(
                context,
                Assets.assetsTime,
                appointmentStore.appointmentDetails.allDay != null && appointmentStore.appointmentDetails.allDay!
                    ? Language.home_all_day
                    : appointmentStore.appointmentDetails.suggestedTime ?? ''),
            _buildInfoTile(context, Assets.assetsCalendar, appointmentStore.appointmentDetails.suggestedDate ?? ''),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionalInfoSegment(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildInfoTile(context, Assets.assetsSize, appointmentStore.appointmentDetails.size ?? '',
              title: Language.ad_info_size),
          _buildInfoTile(context, Assets.assetsTattoo, appointmentStore.appointmentDetails.placement ?? '',
              title: Language.ad_info_placement),
          _buildInfoTile(context, Assets.assetsAllergies, appointmentStore.appointmentDetails.allergies ?? ' - ',
              title: Language.ad_info_allergies),
          _buildInfoTile(
              context, Assets.assetsFinished, appointmentStore.appointmentDetails.appointmentFinished.toString(),
              title: Language.ad_info_finished),
          _buildInfoTile(
              context, Assets.assetsCheckGreen, appointmentStore.appointmentDetails.appointmentConfirmed.toString(),
              title: Language.ad_info_approved),
        ],
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(Language.ad_info_description, style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 20)),
        const SizedBox(height: 10),
        Observer(builder: (_) => Text(appointmentStore.appointmentDetails.description ?? '')),
      ],
    );
  }

  Widget _buildInfoTile(BuildContext context, String icon, String data, {String title = '', Function? onTap}) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            if (title.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[Text(title), const Divider()]),
              )
            else
              const SizedBox(),
            Row(
              children: <Widget>[
                Image.asset(icon, width: 50),
                const SizedBox(width: 5),
                Text(data,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: ColorHelper.black.color.withOpacity(0.7))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
