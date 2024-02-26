import 'package:djudjo_scheduler/app/providers/appointment_provider/appointment_provider.dart';
import 'package:djudjo_scheduler/app/utils/extensions/string_extensions.dart';
import 'package:djudjo_scheduler/app/utils/language/language_strings.dart';
import 'package:djudjo_scheduler/generated/assets.dart';
import 'package:djudjo_scheduler/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../theme/color_helper.dart';
import '../../../widgets/dialogs/simple_dialog.dart';

class AppointmentInfoPage extends StatelessWidget {
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
}

Widget _buildDeleteIcon(BuildContext context) {
  return GestureDetector(
    onTap: () {
      customSimpleDialog(
        context,
        buttonText: Language.sh_delete_cancel,
        buttonTwoText: Language.common_ok,
        onButtonTwoPressed: () => context
            .read<AppointmentProvider>()
            .deleteAppointment(context.read<AppointmentProvider>().appointmentDetails.id!)
            .then((String? value) => Navigator.pushNamedAndRemoveUntil(context, Home, (Route<dynamic> route) => false)),
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
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10),
        _buildDescription(context),
        const SizedBox(height: 20),
        _buildInfoTile(
            context,
            context.watch<AppointmentProvider>().returnGenderImage(context.read<AppointmentProvider>().appointmentDetails.gender!),
            context.watch<AppointmentProvider>().appointmentDetails.name ?? ''),
        _buildInfoTile(context, Assets.assetsEmail, context.watch<AppointmentProvider>().appointmentDetails.email ?? '',
            onTap: () => context.read<AppointmentProvider>().appointmentDetails.email!.emailTo()),
        _buildInfoTile(context, Assets.assetsPhone, context.watch<AppointmentProvider>().appointmentDetails.phone ?? '',
            onTap: () => context.read<AppointmentProvider>().appointmentDetails.phone!.makePhoneCall()),
        _buildInfoTile(
            context,
            Assets.assetsTime,
            context.watch<AppointmentProvider>().appointmentDetails.allDay != null &&
                    context.watch<AppointmentProvider>().appointmentDetails.allDay!
                ? Language.home_all_day
                : context.watch<AppointmentProvider>().appointmentDetails.suggestedTime ?? ''),
        _buildInfoTile(context, Assets.assetsCalendar, context.watch<AppointmentProvider>().appointmentDetails.suggestedDate ?? ''),
      ],
    ),
  );
}

Widget _buildOptionalInfoSegment(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildInfoTile(context, Assets.assetsSize, context.watch<AppointmentProvider>().appointmentDetails.size ?? '',
            title: Language.ad_info_size),
        _buildInfoTile(context, Assets.assetsTattoo, context.watch<AppointmentProvider>().appointmentDetails.placement ?? '',
            title: Language.ad_info_placement),
        _buildInfoTile(context, Assets.assetsAllergies, context.watch<AppointmentProvider>().appointmentDetails.allergies ?? ' - ',
            title: Language.ad_info_allergies),
        _buildInfoTile(
            context, Assets.assetsFinished, context.watch<AppointmentProvider>().appointmentDetails.appointmentFinished.toString(),
            title: Language.ad_info_finished),
        _buildInfoTile(
            context, Assets.assetsCheckGreen, context.watch<AppointmentProvider>().appointmentDetails.appointmentConfirmed.toString(),
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
      Text(context.watch<AppointmentProvider>().appointmentDetails.description ?? ''),
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
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[Text(title), const Divider()]),
            )
          else
            const SizedBox(),
          Row(
            children: <Widget>[
              Image.asset(icon, width: 50),
              const SizedBox(width: 5),
              Text(data, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: ColorHelper.black.color.withOpacity(0.7))),
            ],
          ),
        ],
      ),
    ),
  );
}
