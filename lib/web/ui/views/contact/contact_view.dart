import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/web/ui/views/contact/widgets/text_form_widget.dart';
import 'package:flutter_app/web/ui/views/footer/footer_view.dart';
import 'package:flutter_app/web/utils/colors_app.dart';
import 'package:flutter_app/web/utils/constants_app.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> keyform = GlobalKey();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController messageController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: FittedBox(
              child: AutoSizeText(
                "SEND ME A MESSAGE",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontSize: 28),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AutoSizeText(
              "Your email address will not be published. All fields are required",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          LayoutBuilder(builder: (context, constraints) {
            const double minWidth = 575;
            return Form(
              key: keyform,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: constraints.maxWidth < minWidth ? 250 : 600,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 50,
                  ),
                  child: StaggeredGrid.count(
                    crossAxisCount: 6,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 10,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount:
                            constraints.maxWidth < minWidth ? 6 : 3,
                        mainAxisCellCount:
                            constraints.maxWidth < minWidth ? 2.5 : 1,
                        child: TextFormWidget(
                          title: "Nombres",
                          hintText: "Ingrese su nombre",
                          keyboardType: TextInputType.text,
                          validator: validateName,
                          controller: nameController,
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount:
                            constraints.maxWidth < minWidth ? 6 : 3,
                        mainAxisCellCount:
                            constraints.maxWidth < minWidth ? 2.5 : 1,
                        child: TextFormWidget(
                          title: "Email",
                          hintText: "Ingrese su correo",
                          keyboardType: TextInputType.emailAddress,
                          validator: validateEmail,
                          controller: emailController,
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 6,
                        mainAxisCellCount:
                            constraints.maxWidth < minWidth ? 4 : 2,
                        child: TextFormWidget(
                          title: "Mensaje",
                          hintText: "Ingrese su Mensaje",
                          keyboardType: TextInputType.text,
                          maxLines: constraints.maxWidth < minWidth ? 6 : 8,
                          controller: messageController,
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 6,
                        mainAxisCellCount:
                            constraints.maxWidth < minWidth ? 2 : 1,
                        child: Center(
                          child: OutlinedButton(
                            onPressed: () async {
                              if (keyform.currentState!.validate()) {
                                // ···
                                final Uri emailLaunchUri = Uri(
                                  scheme: 'mailto',
                                  path: ConstansApp.email,
                                  query: encodeQueryParameters(<String, String>{
                                    'subject': '📢 Servicio - Osmi Dev 👨‍💻 ',
                                    'body':
                                        'Hola 👋! \n-Mi nombre es: ${nameController.text}.\n-Mi correo es: ${emailController.text}.\n\n${messageController.text}',
                                  }),
                                );

                                if (await canLaunchUrl(emailLaunchUri)) {
                                  await launchUrl(emailLaunchUri);
                                }
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                  ColorsApp.appYellow),
                              side: MaterialStateProperty.all(
                                const BorderSide(
                                  color: ColorsApp.appYellow,
                                ),
                              ),
                              padding: const MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 30),
                              ),
                              overlayColor: const MaterialStatePropertyAll(
                                  ColorsApp.colorRajah600),
                            ),
                            child: Text(
                              "Enviar",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
          const FooterView(),
        ],
      ),
    );
  }
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

String? validateName(String? value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = RegExp(pattern);
  if (value?.length == 0) {
    return "El nombre es necesario";
  } else if (!regExp.hasMatch(value!)) {
    return "El nombre debe de ser a-z y A-Z";
  }
  return null;
}

String? validateEmail(String? value) {
  String pattern =
      r'(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(pattern);
  if (value?.length == 0) {
    return "El correo es necesario";
  } else if (!regExp.hasMatch(value!)) {
    return "El correo es invalido";
  }
  return null;
}
