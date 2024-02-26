import 'package:scheduler_mobx/app/providers/login_provider/login_provider.dart';
import 'package:scheduler_mobx/app/utils/language/language_strings.dart';
import 'package:scheduler_mobx/generated/assets.dart';
import 'package:scheduler_mobx/routing/routes.dart';
import 'package:scheduler_mobx/widgets/buttons/common_button.dart';
import 'package:scheduler_mobx/widgets/dialogs/simple_dialog.dart';
import 'package:scheduler_mobx/widgets/loaders/loader_app_dialog.dart';
import 'package:scheduler_mobx/widgets/tappable_texts/custom_tappable_text.dart';
import 'package:scheduler_mobx/widgets/text_fields/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';

import '../../../theme/color_helper.dart';
import '../../../widgets/app_bars/common_app_bar.dart';
import '../../utils/storage_manager/storage_prefs_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({this.isFromRegister = false});

  final bool isFromRegister;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  void initState() {
    _getInitialData(context);
    super.initState();
  }

  Future<void> _getInitialData(BuildContext context) async {
    if(widget.isFromRegister) {
      context.read<LoginProvider>().loginEmailController.text = (await storagePrefs.readEmailFromShared()) ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: _buildAppBar(context),
      body: _buildBody(context),
      bottomNavigationBar: _buildBottomBar(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) => commonAppBar(
        context,
        color: ColorHelper.black.color,
        hideLeading: true,
        action: _buildTappableRegister(context),
      );

  Widget _buildTappableRegister(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: CustomTappableText(
        text: Language.reg_tappable_link,
        links: Language.reg_tappable_link,
        linkStyle: const TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 17),
        onPressed: (int i) => Navigator.of(context).pushNamed(Register, arguments: context.read<LoginProvider>()),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        reverse: true,
        shrinkWrap: true,
        children: <Widget>[_buildTopContainer(context), _buildForm(context)].reversed.toList());
  }

  Widget _buildTopContainer(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const <double>[0.9, 1],
              colors: <Color>[ColorHelper.black.color, ColorHelper.white.color],
            ),
          ),
        ),
        ClipPath(clipper: WaveClipperOne(reverse: true), child: Container(height: 80, color: Colors.white)),
      ],
    );
  }

  Widget _buildForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeadline(context),
            const SizedBox(height: 20),
            _buildEmailField(context),
            _buildPasswordField(context),
            _buildTappableForgotPassword(context),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
      controller: context.read<LoginProvider>().loginEmailController,
      hintText: Language.email_hint,
      key: const Key('login_email'),
      onFieldSubmitted: (String? s) {
        FocusScope.of(context).nextFocus();
      },
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
      type: TextFieldType.passwordType,
      controller: context.read<LoginProvider>().loginPasswordController,
      hintText: Language.password_hint,
      key: const Key('login_pass'),
      onFieldSubmitted: (String? s) {
        FocusScope.of(context).nextFocus();
      },
    );
  }

  Widget _buildTappableForgotPassword(BuildContext context) {
    return CustomTappableText(
      text: Language.forgot_tappable_text,
      links: Language.forgot_tappable_link,
      linkStyle: const TextStyle(decoration: TextDecoration.underline, fontSize: 16),
      onPressed: (int i) {
        Navigator.of(context).pushNamed(ForgotPassword, arguments: context.read<LoginProvider>());
      },
    );
  }

  Widget _buildHeadline(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(Language.login_headline, style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 24)),
          Image.asset(Assets.assetsIcLogo, width: 50),
        ],
      );

  Widget _buildBottomBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: CommonButton(
        onPressed: () {
          customLoaderCircleWhite(context: context);
          context.read<LoginProvider>().loginUser().then((String? error) {
            Navigator.of(context).pop();
            if (error != null) {
              customSimpleDialog(context, buttonText: Language.common_ok, title: Language.common_error, content: error);
            } else {
              Navigator.of(context).pushNamedAndRemoveUntil(Home, (Route<dynamic> bool) => true);
            }
          });
        },
        buttonTitle: Language.login_btn,
      ),
    );
  }
}
