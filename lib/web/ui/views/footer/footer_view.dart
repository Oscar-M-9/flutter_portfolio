import 'package:flutter/material.dart';
import 'package:flutter_app/web/ui/shared/widgets/logo_web.dart';
import 'package:flutter_app/web/utils/colors_app.dart';
import 'package:flutter_app/web/utils/constants_app.dart';
import 'package:flutter_app/web/utils/social_icons_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 180,
            height: 50,
            child: LogoWeb(),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton(
                icon: SocialIcons.github,
                onPressed: () => _launchURL(context, ConstansApp.urlGithub),
              ),
              SocialButton(
                icon: SocialIcons.linkedin,
                onPressed: () => _launchURL(context, ConstansApp.urlLinkedin),
              ),
              SocialButton(
                icon: SocialIcons.facebook,
                onPressed: () => _launchURL(context, ConstansApp.urlFacebook),
              ),
            ],
          )
        ],
      ),
    );
  }
}

void _launchURL(BuildContext context, Uri url) async {
  await launchUrl(url);
}

class SocialButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData icon;
  const SocialButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: ColorsApp.appYellow,
        ),
        style: ButtonStyle(
          overlayColor: MaterialStatePropertyAll(
            ColorsApp.appYellow.withOpacity(.2),
          ),
        ),
      ),
    );
  }
}
