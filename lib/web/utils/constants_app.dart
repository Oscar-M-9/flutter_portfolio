import 'package:flutter_app/web/models/blog_model.dart';
import 'package:flutter_app/web/models/project_model.dart';
import 'package:flutter_app/web/models/services_model.dart';
import 'package:flutter_app/web/utils/assets_app.dart';

class ConstansApp {
  //* =========================
  //*        Seo
  //* =========================
  static const String author = "Oscar Chavesta";
  static const String description =
      "Porfolio Web personal de Oscar Chavesta Caicedo";
  static const String keywords =
      "Porfolio Web, Oscar Chavesta Caicedo, Oscar Chavesta, Oscar, Chavesta, Oscar Miguel, Desarrollador, Developer, Osmi Dev, Osmi, Oscar Chavesta Developer, Frontend Developer, Backend Developer, Mobile Developer,Fullstack Developer";

  static const String facebookAppID = "998867785208658";
  static const String ogTitle = "Oscar Chavesta";
  static const String ogDescription = "Fullstack Developer";
  static String ogImage = AssetsApp.ogImage;

  static const String twitterTitle = "Oscar Chavesta";
  static const String twitterDescription = "Fullstack Developer";
  static String twitterImage = AssetsApp.ogImage;

  //* =========================
  //*        Home
  //* =========================
  static const String email = "oscar.ch.dev@gmail.com";
  static const String title = "Porfolio";
  static const String vocation = "App & Fullstack Developer";
  //
  static const String titleAbout = "Desarrollador fullstack ";
  static const String descriptionAbout =
      "Me mantengo constantemente actualizado con las últimas tendencias y mejores prácticas en el desarrollo de software. \nEstoy comprometido con la entrega de productos de alta calidad, centrados en el usuario y orientados a los objetivos comerciales. \nMás allá de mi experiencia técnica, valoro la comunicación efectiva, la resolución de problemas y la mentalidad de crecimiento continuo. \nEstoy emocionado por enfrentar nuevos desafíos y seguir expandiendo mis habilidades en el fascinante campo del desarrollo de software.";
  // About me
  static const String info1NumberAbout = "10+";
  static const String info1Text1About = "Projects";
  static const String info1Text2About = "Completed";

  static const String info2NumberAbout = "1+";
  static const String info2Text1About = "Awards";
  static const String info2Text2About = "Win";

  static const String info3NumberAbout = "10+";
  static const String info3Text1About = "Happy";
  static const String info3Text2About = "Clients";
  // experience
  static const String yearExprience = "1+";
  static const String infoExprience =
      "Tengo  $yearExprience años de experiencia en desarrollo de software para brindarle mejores servicios";

  //* =========================
  //*        Servicios
  //* =========================

  static final List<ServicesModel> services = [
    ServicesModel(
      title: "FrontEnd Developer",
      description:
          "Mi objetivo es combinar el diseño visual con la funcionalidad para desarrollar productos que no solo sean estéticamente agradables sino también eficientes y accesibles.",
      image: AssetsApp.iconWebsite,
      delay: 100,
    ),
    ServicesModel(
      title: "BackEnd Developer",
      description:
          "Mi prioridad es garantizar la escalabilidad, eficiencia y seguridad de las aplicaciones a través de una infraestructura bien diseñada y mantenida.",
      image: AssetsApp.iconBackend,
      delay: 300,
    ),
    ServicesModel(
      title: "Mobile Developer",
      description:
          "Mi enfoque es proporcionar soluciones móviles innovadoras y de alto rendimiento que satisfagan las necesidades y expectativas de los usuarios modernos.",
      image: AssetsApp.iconMobile,
      delay: 500,
    ),
  ];

  //* =========================
  //*        Proyectos
  //* =========================

  static final List<ProjectModel> projects = [
    ProjectModel(
      title: "Portfolio Website",
      subtitle:
          "Un portfolio web interactivo y visualmente atractivo desarrollado en Flutter para mostrar mis proyectos y habilidades.",
      image: AssetsApp.projectPorfolio,
      crossAxisCell: 3,
      mainAxisCell: 2,
    ),
    ProjectModel(
      title: "Caja Sullana Website",
      subtitle:
          "Participé en el desarrollo del nuevo sitio web CMS para Caja Sullana, mejorando la funcionalidad y la experiencia del usuario.",
      image: AssetsApp.projectCajaSullana,
      crossAxisCell: 3,
      mainAxisCell: 2,
    ),
    ProjectModel(
      title: "Note Organizer App",
      subtitle:
          "Aplicación móvil diseñada para la organización eficiente de notas, proporcionando una interfaz fácil de usar y características avanzadas.",
      image: AssetsApp.projectNoteApp,
      crossAxisCell: 2,
      mainAxisCell: 2,
    ),
    ProjectModel(
      title: "Coffee Shop App",
      subtitle:
          "Aplicación móvil centrada en la gestión de una cafetería, ofreciendo un menú interactivo y funcionalidades de pedidos en línea.",
      image: AssetsApp.projectCoffeApp,
      crossAxisCell: 2,
      mainAxisCell: 2,
    ),
    ProjectModel(
      title: "CyberDriver Mobile App",
      subtitle:
          "Formo parte del equipo de desarrollo de la aplicación móvil 'CyberDriver', que ofrece soluciones avanzadas para conductores y servicios de transporte.",
      image: AssetsApp.projectDefault,
      crossAxisCell: 2,
      mainAxisCell: 2,
    ),
    ProjectModel(
      title: "AT Events Discoverer",
      subtitle:
          "Encuentra el evento perfecto para ti con esta aplicación que ofrece una búsqueda y descubrimiento de eventos personalizados.",
      image: AssetsApp.projectAtEvents,
      crossAxisCell: 3,
      mainAxisCell: 2,
    ),
    ProjectModel(
      title: "Legaltech Solutions",
      subtitle:
          "Desarrollo de soluciones móviles innovadoras y de alto rendimiento para satisfacer las necesidades y expectativas de los usuarios modernos en el ámbito legal.",
      image: AssetsApp.projectDefault,
      crossAxisCell: 3,
      mainAxisCell: 2,
    ),
  ];

  //* =========================
  //*        Blogs
  //* =========================
  static final List<BlogModel> blogs = [
    BlogModel(
      title: "Seguridad Cibernética en la Era Digital",
      description:
          "Con el aumento de las amenazas cibernéticas, las empresas están adoptando nuevas estrategias y tecnologías para proteger sus datos y garantizar la seguridad en línea.",
      image: AssetsApp.blogCiberseguridad,
      date: DateTime(2024, 06, 05),
      author: "Cyber Secure",
    ),
    BlogModel(
      title: "Redes 5G y el Futuro de la Conectividad",
      description:
          "La implementación global de redes 5G está acelerando, ofreciendo velocidades de conexión sin precedentes y abriendo nuevas oportunidades para aplicaciones en IoT, automóviles autónomos y más.",
      image: AssetsApp.blog5g,
      date: DateTime(2024, 06, 10),
      author: "Connectivity World",
    ),
    // BlogModel(
    //   title: "Innovaciones en Realidad Aumentada",
    //   description:
    //       "Las nuevas gafas de realidad aumentada de XYZ Company están transformando la manera en que interactuamos con el mundo digital, integrando de manera fluida información digital con el entorno físico.",
    //   image: AssetsApp.projectCajaSullana,
    //   date: DateTime(2024, 06, 15),
    //   author: "Future Tech",
    // ),
    BlogModel(
      title: "Avances en la Inteligencia Artificial",
      description:
          "Investigadores han desarrollado una nueva técnica de inteligencia artificial que promete revolucionar la forma en que las máquinas entienden el lenguaje humano, haciendo las interacciones más naturales y eficientes.",
      image: AssetsApp.blogIA,
      date: DateTime(2024, 06, 18),
      author: "AI Today",
    ),
    BlogModel(
      title: "Lanzamiento de iOS 17",
      description:
          "Apple ha lanzado la última versión de su sistema operativo, iOS 17, con nuevas características como mejoras en la privacidad, nuevas aplicaciones integradas y una interfaz de usuario mejorada.",
      image: AssetsApp.blogIOS17,
      date: DateTime(2024, 06, 20),
      author: "Tech News",
    ),
    BlogModel(
      title: "Lanzamiento de mi Portfolio en Flutter",
      description:
          "Explora mi nuevo portfolio desarrollado con Flutter, donde destaco mis habilidades y proyectos. ¡Descubre cómo Flutter me ha permitido crear una experiencia web única e interactiva!",
      image: AssetsApp.projectPorfolio,
      date: DateTime(2024, 06, 25),
      author: "Oscar Chavesta",
    ),
    BlogModel(
      title: "Nueva Página Web para Caja Sullana",
      description:
          "Orgulloso de haber sido parte del equipo que lanzó la nueva página web de Caja Sullana. Este proyecto CMS mejora la experiencia del usuario y optimiza las funcionalidades del sitio.",
      image: AssetsApp.projectCajaSullana,
      date: DateTime(2024, 03, 24),
      author: "Oscar Chavesta",
    ),
  ];

  static final Uri urlGithub = Uri.parse('https://github.com/oscar-m-9');
  static final Uri urlLinkedin =
      Uri.parse('https://www.linkedin.com/in/oscar-chavesta/');
  static final Uri urlFacebook =
      Uri.parse('https://www.facebook.com/OsmiTecOficial?mibextid=ZbWKwL');
  static final Uri urlInstagram = Uri.parse(
      'https://www.instagram.com/oscar_chavesta?igsh=MnVmMmhnNTh0c21k');
  static final Uri urlWhatsapp = Uri.parse('https://wa.link/9tu48x');
}
