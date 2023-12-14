import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tag_ambiente_model.dart';
export 'tag_ambiente_model.dart';

class TagAmbienteWidget extends StatefulWidget {
  const TagAmbienteWidget({
    Key? key,
    this.parameter1,
  }) : super(key: key);

  final String? parameter1;

  @override
  _TagAmbienteWidgetState createState() => _TagAmbienteWidgetState();
}

class _TagAmbienteWidgetState extends State<TagAmbienteWidget> {
  late TagAmbienteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagAmbienteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: widget.parameter1!,
      options: FFButtonOptions(
        height: 23.0,
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: Color(0xFFAFAFAF),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Open Sans',
              color: Colors.white,
              fontSize: 12.0,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0.0,
        ),
        borderRadius: BorderRadius.circular(80.0),
      ),
    );
  }
}
