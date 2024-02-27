import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:scheduler_mobx/app/utils/extensions/int_extensions.dart';
import 'package:scheduler_mobx/app/utils/extensions/string_extensions.dart';

import '../../../generated/assets.dart';
import '../../../routing/routes.dart';
import '../../../theme/color_helper.dart';
import '../../../widgets/app_bars/common_app_bar.dart';
import '../../../widgets/appointment_card/appointment_card.dart';
import '../../locator.dart';
import '../../models/appointment_model.dart';
import '../../stores/appointment_store/appointment_store.dart';
import '../../utils/language/language_strings.dart';

class FavoritesPage extends StatelessWidget {
  FavoritesPage({super.key});

  final AppointmentStore appointmentStore = locator<AppointmentStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(context), body: _buildBody(context));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) => commonAppBar(
        context,
        color: ColorHelper.white.color,
        icon: Icons.arrow_back_ios,
        title: Language.fav_app_bar,
        titleColor: ColorHelper.black.color,
        leadingIconColor: ColorHelper.black.color,
        onLeadingTap: () => Navigator.of(context).pop(),
      );

  Widget _buildBody(BuildContext context) {
    return LiquidPullToRefresh(
      backgroundColor: Colors.black,
      color: ColorHelper.towerBronze.color,
      height: 50,
      showChildOpacityTransition: false,
      onRefresh: () => appointmentStore.fetchAppointments(),
      child: Observer(
        builder: (_) => ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          shrinkWrap: true,
          children: <Widget>[
            const SizedBox(height: 20),
            _buildHeadline(context),
            const Divider(),
            const SizedBox(height: 20),
            if (appointmentStore.appointmentsFavorites.isNotEmpty)
              _listOfAppointments(context)
            else
              _buildEmptyState(context),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadline(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Text(
            Language.fav_headline_info,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Image.asset(
          Assets.assetsFav,
          scale: 7,
        ),
      ],
    );
  }

  Widget _listOfAppointments(BuildContext context) {
    return Observer(
      builder: (_) => GroupedListView<Appointment, String>(
        shrinkWrap: true,
        elements: appointmentStore.appointmentsFavorites,
        reverse: true,
        groupBy: (Appointment element) => element.suggestedDate!.returnDatetimeFormattedForGrouping(),
        groupSeparatorBuilder: (String date) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(date.returnDateMonthForHomeSeparator(),
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 24)),
                const Divider(),
              ],
            ),
          );
        },
        itemBuilder: (BuildContext context, Appointment element) {
          return AppointmentCard(
            onCardPressed: () {
              appointmentStore.setAppointmentDetails(element);
              Navigator.of(context).pushNamed(AppointmentDetails);
            },
            name: element.name ?? '',
            day: element.suggestedDate != null ? element.suggestedDate!.returnDateDayForHomeCard() : '',
            month: element.suggestedDate != null ? element.suggestedDate!.returnDateMonthForHomeCard() : '',
            phone: element.phone ?? '',
            time: element.suggestedTime != null ? element.suggestedTime!.returnTimeForHomeCard() : '',
            dotColor: element.hashCode.getRandomColor(),
            finished: element.appointmentFinished ?? false,
          );
        },
        floatingHeader: true, // optional
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(Assets.assetsHomeEmpty, height: 160),
        const SizedBox(height: 15),
        const Text(Language.fav_empty),
      ],
    );
  }
}
