import '/backend/api_requests/api_calls.dart';
import '/components/select_map_address_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_company_page_widget.dart' show CreateCompanyPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateCompanyPageModel extends FlutterFlowModel<CreateCompanyPageWidget> {
  ///  Local state fields for this page.

  String? name = '';

  String? typeCompany = '';

  List<String> categories = [];
  void addToCategories(String item) => categories.add(item);
  void removeFromCategories(String item) => categories.remove(item);
  void removeAtIndexFromCategories(int index) => categories.removeAt(index);
  void insertAtIndexInCategories(int index, String item) =>
      categories.insert(index, item);
  void updateCategoriesAtIndex(int index, Function(String) updateFn) =>
      categories[index] = updateFn(categories[index]);

  List<String> payment = [];
  void addToPayment(String item) => payment.add(item);
  void removeFromPayment(String item) => payment.remove(item);
  void removeAtIndexFromPayment(int index) => payment.removeAt(index);
  void insertAtIndexInPayment(int index, String item) =>
      payment.insert(index, item);
  void updatePaymentAtIndex(int index, Function(String) updateFn) =>
      payment[index] = updateFn(payment[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TypeCompanyDropDown widget.
  String? typeCompanyDropDownValue;
  FormFieldController<String>? typeCompanyDropDownValueController;
  // State field(s) for CategoriesDropDown widget.
  List<String>? categoriesDropDownValue;
  FormFieldController<String>? categoriesDropDownValueController;
  // State field(s) for MetodoPagoDropDown widget.
  List<String>? metodoPagoDropDownValue;
  FormFieldController<String>? metodoPagoDropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
