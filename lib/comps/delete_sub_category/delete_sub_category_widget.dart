import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'delete_sub_category_model.dart';
export 'delete_sub_category_model.dart';

class DeleteSubCategoryWidget extends StatefulWidget {
  const DeleteSubCategoryWidget({
    super.key,
    required this.subCatRef,
  });

  final DocumentReference? subCatRef;

  @override
  State<DeleteSubCategoryWidget> createState() =>
      _DeleteSubCategoryWidgetState();
}

class _DeleteSubCategoryWidgetState extends State<DeleteSubCategoryWidget> {
  late DeleteSubCategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteSubCategoryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.4,
          height: MediaQuery.sizeOf(context).height * 0.07,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 7.0,
                color: Color(0x2F1D2429),
                offset: Offset(
                  0.0,
                  3.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Are you sure you want to delete this sub category',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: GoogleFonts.inter(
                          fontWeight:
                              FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderRadius: 8.0,
                        borderWidth: 2.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.delete_outline_outlined,
                          color: FlutterFlowTheme.of(context).customColor2,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          await widget.subCatRef!.delete();
                          Navigator.pop(context);
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Deleted Successful'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderRadius: 8.0,
                      borderWidth: 2.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
