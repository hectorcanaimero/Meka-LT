import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
    String? ptText = '',
  }) =>
      [esText, enText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginPage
  {
    'xz6agwmn': {
      'es': 'Meka ',
      'en': 'Meka',
      'pt': 'Meka',
    },
    'jcc964rz': {
      'es': 'LT',
      'en': 'L.T.',
      'pt': 'L. T.',
    },
    '8t42qsqg': {
      'es': 'Bienvenido de nuevo',
      'en': 'Welcome back',
      'pt': 'Bem vindo de novo',
    },
    'rkqwjeuv': {
      'es': 'Complete la información a continuación para acceder a su cuenta.',
      'en': 'Please complete the information below to access your account.',
      'pt': 'Preencha as informações abaixo para acessar sua conta.',
    },
    'a0f8ai7q': {
      'es': '',
      'en': 'E-mail',
      'pt': 'E-mail',
    },
    'xpjzaoq5': {
      'es': 'E-mail',
      'en': 'E-mail',
      'pt': 'E-mail',
    },
    'yvmfat59': {
      'es': '',
      'en': 'Password',
      'pt': 'Senha',
    },
    '8savg7ok': {
      'es': 'Contraseña',
      'en': 'Password',
      'pt': 'Senha',
    },
    'j9q5hbaz': {
      'es': 'Iniciar sesión',
      'en': 'Log in',
      'pt': 'Iniciar sessão',
    },
    '9hcnw5ef': {
      'es': 'Registrese aqui',
      'en': 'Register here',
      'pt': 'Registre-se aqui',
    },
    '9wlny8wh': {
      'es': '¿Has olvidado tu contraseña?',
      'en': 'have you forgotten your password?',
      'pt': 'Esqueceu sua senha?',
    },
    'v4h9vdq1': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
    },
  },
  // ForgotPasswordPage
  {
    'yrxvntcu': {
      'es': 'Back',
      'en': 'Back',
      'pt': 'Voltar',
    },
    'grnb1m43': {
      'es': 'Has olvidado tu contraseña',
      'en': 'Have you forgotten your password',
      'pt': 'Esqueceu sua senha',
    },
    '1qp5j1fs': {
      'es':
          'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña; ingrese el correo electrónico asociado con su cuenta a continuación.',
      'en':
          'We will send you an email with a link to reset your password; Enter the email associated with your account below.',
      'pt':
          'Enviaremos um e-mail com um link para redefinir sua senha; Digite o e-mail associado à sua conta abaixo.',
    },
    '5m2k0697': {
      'es': 'Introduce tu correo electrónico...',
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'o0qxowpp': {
      'es': 'Recuperar Contraseña',
      'en': 'Recover password',
      'pt': 'Recuperar senha',
    },
    'ts46ko59': {
      'es': 'Campo es obligatorio',
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
    },
    'xtgfq1vn': {
      'es': 'Email invalido',
      'en': 'invalid email',
      'pt': 'e-mail inválido',
    },
    'gfpka7w0': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'dlnvgo6u': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
    },
  },
  // ProfilePage
  {
    'azjxjzu2': {
      'es': 'David Jerome',
      'en': 'David Jerome',
      'pt': 'David Jerônimo',
    },
    'j4kcz2ub': {
      'es': 'David.j@gmail.com',
      'en': 'David.j@gmail.com',
      'pt': 'David.j@gmail.com',
    },
    'wqapjv16': {
      'es': 'Nombre Completo...',
      'en': 'Full name...',
      'pt': 'Nome completo...',
    },
    '40ok9mrx': {
      'es': 'Email....',
      'en': 'E-mail....',
      'pt': 'E-mail....',
    },
    'x5x2gv52': {
      'es': 'Label here...',
      'en': 'Label here...',
      'pt': 'Etiqueta aqui...',
    },
    'x2dby4yp': {
      'es': 'Español',
      'en': 'Spanish',
      'pt': 'Espanhol',
    },
    '9xhohzsr': {
      'es': 'Ingles',
      'en': 'English',
      'pt': 'Inglês',
    },
    'odkhklkb': {
      'es': 'Portugues',
      'en': 'Portuguese',
      'pt': 'Português',
    },
    'd0cd7c5v': {
      'es': 'Idioma...',
      'en': 'Language...',
      'pt': 'Linguagem...',
    },
    'v49sscbs': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    '4szod4wc': {
      'es': 'Salvar',
      'en': 'Save',
      'pt': 'Salvar',
    },
    'qluplj3r': {
      'es': 'Perfil',
      'en': 'Profile',
      'pt': 'Perfil',
    },
  },
  // MenuPage
  {
    'ulxf9cc1': {
      'es': 'Conectado',
      'en': 'Connected',
      'pt': 'Conectado',
    },
    '60ri68ru': {
      'es': 'Actualizar Perfil',
      'en': 'Update profile',
      'pt': 'Atualizar perfil',
    },
    'kfmyfuas': {
      'es': 'Ver datos de la compañia',
      'en': 'View company data',
      'pt': 'Ver dados da empresa',
    },
    'bv36wjjf': {
      'es': 'Atendimiento al Cliente',
      'en': 'Customer Service',
      'pt': 'Atendimento ao Cliente',
    },
    '54zsjwr8': {
      'es': 'Subscripción',
      'en': 'Subscription',
      'pt': 'Inscrição',
    },
    'u6omeba5': {
      'es': 'Excluir datos de la cuenta',
      'en': 'Exclude account data',
      'pt': 'Excluir dados da conta',
    },
    'v6w8rwsw': {
      'es': 'Cerrar Sesión',
      'en': 'Sign off',
      'pt': 'Fechar Sessão',
    },
    'hovg29op': {
      'es': 'Menú',
      'en': 'Menu',
      'pt': 'Cardápio',
    },
  },
  // ServicesPage
  {
    '9ks2r7fp': {
      'es': 'Por Aceptar',
      'en': 'Historical',
      'pt': 'Histórico',
    },
    '1vck6sd7': {
      'es': '...',
      'en': '...',
      'pt': '...',
    },
    'gpw6a61s': {
      'es': 'Aceptados',
      'en': 'Cancelled',
      'pt': 'Cancelado',
    },
    '1uwbmr52': {
      'es': '...',
      'en': '...',
      'pt': '...',
    },
    'st342pdi': {
      'es': 'Services',
      'en': 'Services',
      'pt': 'Serviços',
    },
  },
  // HomePage
  {
    'd9kuw9dl': {
      'es': 'Hola, ',
      'en': 'Hello,',
      'pt': 'Olá,',
    },
    '9sid90au': {
      'es': 'Servicios por Aceptar',
      'en': 'Services to Accept',
      'pt': 'Serviços para aceitar',
    },
    'ky6pkf0z': {
      'es': 'Servicios Activos',
      'en': 'Active Services',
      'pt': 'Serviços ativos',
    },
    'ktpxcq59': {
      'es': 'Sin servicios activos',
      'en': '',
      'pt': '',
    },
    'b7ufns9y': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // ChatPage
  {
    'e212tyt4': {
      'es': 'Chat del Servicio',
      'en': 'Service Chat',
      'pt': 'Bate-papo de serviço',
    },
    'xkapq9i5': {
      'es': '',
      'en': 'Enter your message...',
      'pt': 'Digite sua mensagem...',
    },
    'mxb3om8x': {
      'es': 'Digite su mensaje...',
      'en': 'Enter your message...',
      'pt': 'Digite sua mensagem...',
    },
    '6udpcrpl': {
      'es': 'Home',
      'en': 'home',
      'pt': 'lar',
    },
  },
  // CreateUserPage
  {
    'ywata1kg': {
      'es': 'Cargar Foto',
      'en': 'Upload Photo',
      'pt': 'Carregar foto',
    },
    'kj3f3mit': {
      'es': '',
      'en': 'Name',
      'pt': 'Nome',
    },
    'jgkwd72q': {
      'es': 'Nombre',
      'en': 'Name',
      'pt': 'Nome',
    },
    'y9wrrmyq': {
      'es': '',
      'en': 'Last name',
      'pt': 'Sobrenome',
    },
    'cuako5nn': {
      'es': 'Apellido',
      'en': 'Last name',
      'pt': 'Sobrenome',
    },
    'z98aafgn': {
      'es': '',
      'en': 'E-mail',
      'pt': 'E-mail',
    },
    '29auehl9': {
      'es': 'E-mail',
      'en': 'E-mail',
      'pt': 'E-mail',
    },
    'uf0kxzj6': {
      'es': '',
      'en': 'Cell phone',
      'pt': 'Celular',
    },
    '44f73l49': {
      'es': 'Celular',
      'en': 'Cell phone',
      'pt': 'Celular',
    },
    '4nwy0rua': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '6jy7svao': {
      'es': 'Seleccione el país...',
      'en': 'Select the country...',
      'pt': 'Selecione o país...',
    },
    'uiza8s4z': {
      'es': 'Busca del pais...',
      'en': 'Search for the country...',
      'pt': 'Procure o país...',
    },
    'e3uk4645': {
      'es': '',
      'en': 'Password',
      'pt': 'Senha',
    },
    'c9n1tdvv': {
      'es': 'Contraseña',
      'en': 'Password',
      'pt': 'Senha',
    },
    'du66pox9': {
      'es': 'Registrar',
      'en': 'to register',
      'pt': 'registrar',
    },
    '0l2i6bwk': {
      'es': 'Crear Usuario',
      'en': 'Create User',
      'pt': 'Criar usuário',
    },
    'i89p1pef': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Home ',
    },
  },
  // RegistroPage
  {
    '1x0wu7jy': {
      'es': 'Cancelados',
      'en': 'Historical',
      'pt': 'Histórico',
    },
    'n8c1rq31': {
      'es': '...',
      'en': '...',
      'pt': '...',
    },
    'qe8wfei4': {
      'es': 'Aceptados',
      'en': 'Cancelled',
      'pt': 'Cancelado',
    },
    'e0vcut0e': {
      'es': '...',
      'en': '...',
      'pt': '...',
    },
    'xmseg211': {
      'es': 'Services',
      'en': 'Services',
      'pt': 'Serviços',
    },
  },
  // CreateCompanyPage
  {
    'iyw4seyd': {
      'es': 'Registrar la compañia',
      'en': 'Register the company',
      'pt': 'Cadastre a empresa',
    },
    '2b7btjo4': {
      'es': 'Nombre de la compañia',
      'en': 'Name of the company',
      'pt': 'Nome da companhia',
    },
    'q7gb20x5': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'ol9h8oxb': {
      'es': 'Seleccione el tipo de compañia',
      'en': 'Select the type of company',
      'pt': 'Selecione o tipo de empresa',
    },
    '0x41cuer': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'r83bynzp': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    '40lcjozl': {
      'es': 'Categoria(s) que actua..',
      'en': 'Category(s) that operates..',
      'pt': 'Categoria(s) que opera..',
    },
    '6uo85d50': {
      'es': 'Busqueda de la categoria...',
      'en': 'Category search...',
      'pt': 'Pesquisa de categoria...',
    },
    'a0y8jx9y': {
      'es': 'Dinero',
      'en': 'Money',
      'pt': 'Dinheiro',
    },
    'zdrz0vok': {
      'es': 'Tarjeta de Credito',
      'en': 'Credit card',
      'pt': 'Cartão de crédito',
    },
    'iqxc6r69': {
      'es': 'Transferencia',
      'en': 'Transfer',
      'pt': 'Transferir',
    },
    'prf9hucf': {
      'es': 'Criptomoneda',
      'en': 'Cryptocurrency',
      'pt': 'Criptomoeda',
    },
    'myhb6kgz': {
      'es': 'Paypal',
      'en': 'PayPal',
      'pt': 'PayPal',
    },
    '8t82ifgz': {
      'es': 'Método de Pago',
      'en': 'Payment method',
      'pt': 'Forma de pagamento',
    },
    'ejpohgxz': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'new9e7yk': {
      'es': 'Buscar tu dirección',
      'en': 'Find your address',
      'pt': 'Encontre seu endereço',
    },
    'gokn01in': {
      'es': 'Registrar Compañia',
      'en': 'Register Company',
      'pt': 'Cadastrar Empresa',
    },
    'lr9k4mpn': {
      'es': 'Home',
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // MessageAdvisorComponent
  {
    '6v4wpi7w': {
      'es': 'Envia un mensaje por e-mail',
      'en': 'Send a message by email',
      'pt': 'Envie uma mensagem por e-mail',
    },
    'cwam4561': {
      'es': 'Digite su mensaje...',
      'en': 'Enter your message...',
      'pt': 'Digite sua mensagem...',
    },
    'mrojpqzv': {
      'es': 'Enviar',
      'en': 'Send',
      'pt': 'Enviar',
    },
  },
  // CompleteUserComponent
  {
    'h2yzw9ew': {
      'es': 'Completa tu perfil',
      'en': 'Complete your profile',
      'pt': 'Complete seu perfil',
    },
    'r5vqr6nw': {
      'es': 'Option 1',
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'wbyz1fql': {
      'es': 'Please select...',
      'en': 'Please select...',
      'pt': 'Por favor selecione...',
    },
    'qcnthhaj': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    '9cg06ulb': {
      'es': 'Label here...',
      'en': 'Label here...',
      'pt': 'Etiqueta aqui...',
    },
    '5o0b3tse': {
      'es': 'Avatar',
      'en': 'Avatar',
      'pt': 'avatar',
    },
    '808pbsz0': {
      'es': 'Salvar',
      'en': 'Save',
      'pt': 'Salvar',
    },
  },
  // selectMapAddressComponent
  {
    'd3fgepjg': {
      'es': 'Ubicación de la compañia',
      'en': 'Company location',
      'pt': 'Localização da empresa',
    },
    's248lbb6': {
      'es': 'Seleccionar tu ubicación',
      'en': 'Select Location',
      'pt': 'Selecione o local',
    },
    'ogcutuse': {
      'es': 'Salvar la dirección',
      'en': 'Save address',
      'pt': 'Salvar endereço',
    },
  },
  // ViewServiceComponent
  {
    '8oxd6kvj': {
      'es': 'Ver Servicio',
      'en': 'See Service',
      'pt': 'Consulte o serviço',
    },
    '3rfdt6kq': {
      'es': 'Chat con el usuário',
      'en': 'Chat with the user',
      'pt': 'Converse com o usuário',
    },
    '904qxh5c': {
      'es': 'Detalles',
      'en': 'Details',
      'pt': 'Detalhes',
    },
    'uywy2aez': {
      'es': 'Ubicación',
      'en': 'Location',
      'pt': 'Localização',
    },
    '70xe71s4': {
      'es': 'Fotos',
      'en': 'Photos',
      'pt': 'Fotos',
    },
    'nkq90grj': {
      'es': 'Aceptar',
      'en': 'Cancel Service',
      'pt': 'Cancelar serviço',
    },
    'gnw2bhl2': {
      'es': 'Cancelar',
      'en': 'Cancel Service',
      'pt': 'Cancelar serviço',
    },
  },
  // NotificationComponent
  {
    'h8g4bkt9': {
      'es': '43gfdg...',
      'en': '43gfdg...',
      'pt': '43gfdg...',
    },
    'vms4jmvm': {
      'es': 'Aire Acondicionado',
      'en': 'Air-conditioning',
      'pt': 'Ar-condicionado',
    },
    '2hpsua96': {
      'es': 'FORD FOCUS',
      'en': 'FORD FOCUS',
      'pt': 'FORD FOCUS',
    },
    '3fkwv31p': {
      'es': '32/12 18:32',
      'en': '12/32 18:32',
      'pt': '32/12 18:32',
    },
    '871jlqx2': {
      'es': '43gfdg...',
      'en': '43gfdg...',
      'pt': '43gfdg...',
    },
    '9b6hbgfj': {
      'es': 'Aire Acondicionado',
      'en': 'Air-conditioning',
      'pt': 'Ar-condicionado',
    },
    'pdc16gec': {
      'es': 'FORD FOCUS',
      'en': 'FORD FOCUS',
      'pt': 'FORD FOCUS',
    },
    'diy2x4m3': {
      'es': '32/12 18:32',
      'en': '12/32 18:32',
      'pt': '32/12 18:32',
    },
  },
  // ChatComponent
  {
    'gci51i0l': {
      'es': 'Create Note',
      'en': 'Create Note',
      'pt': 'Criar nota',
    },
    '9e2my3sy': {
      'es': 'Find members by searching below',
      'en': 'Find members by searching below',
      'pt': 'Encontre membros pesquisando abaixo',
    },
    '9isf5e80': {
      'es': 'Enter your note here...',
      'en': 'Enter your note here...',
      'pt': 'Digite sua nota aqui...',
    },
    'al57ju5g': {
      'es': 'Create Note',
      'en': 'Create Note',
      'pt': 'Criar nota',
    },
  },
  // CommentsComponent
  {
    'r5qe2uaq': {
      'es': 'Clasificar el servicio',
      'en': 'Classify the service',
      'pt': 'Classifique o serviço',
    },
    '13wehv7s': {
      'es': 'Digite un comentario ..',
      'en': 'Type a comment..',
      'pt': 'Digite um comentário..',
    },
    '04qfgffj': {
      'es': 'Enviar comentario',
      'en': 'Send comment',
      'pt': 'Enviar comentário',
    },
  },
  // DesactiveComponent
  {
    'fnxphbgn': {
      'es': 'Fuera de Linea',
      'en': '',
      'pt': '',
    },
    '8rjq054y': {
      'es': 'No puedes aceptar ningún servicio.',
      'en': '',
      'pt': '',
    },
  },
  // Miscellaneous
  {
    'dnns4zx8': {
      'es':
          'Vamos a utilizar la camara, para acciones dentro de la App, tales como fotografia de los servicios, avatar',
      'en': '',
      'pt': '',
    },
    'bfupsvza': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'vm9msefz': {
      'es':
          'Vamos usar tu localización, para entrgar una mayor precision de los servicios',
      'en':
          'We will use your location to provide greater precision of services',
      'pt':
          'Usaremos sua localização para fornecer maior precisão dos serviços',
    },
    'qapbfrtx': {
      'es':
          'Vamos enviar notificaciones de sistema, y que puedas estar enterado de todo lo relacionado a la App',
      'en':
          'We will send system notifications, so that you can be aware of everything related to the App',
      'pt':
          'Enviaremos notificações do sistema, para que você fique por dentro de tudo relacionado ao App',
    },
    '5wpaoswc': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'walo7ksi': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'l5wr12of': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '9717qgo9': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'h5nqutw1': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '5bf3impo': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'izi0090x': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'mj1ir92g': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'wwfadgmu': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'jegs1hgd': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '5unxliaj': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '96cgtlzr': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '4yhgf3cu': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'b4p7nss5': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'b21nfsuv': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'ptq7po24': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'tsmwx5bw': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'judwv2gc': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '2z8a7qrz': {
      'es': '',
      'en': '',
      'pt': '',
    },
    '68xx5maf': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'xa804h8p': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'x9486h8f': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'y5q5yale': {
      'es': '',
      'en': '',
      'pt': '',
    },
    'nuqzzijd': {
      'es': '',
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
