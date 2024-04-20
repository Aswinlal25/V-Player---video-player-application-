import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PolicyScreen extends StatelessWidget {
  final String mdFileName;
  final String title;

  const PolicyScreen({Key? key, required this.mdFileName, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: PolicyDialogContent(
        mdFileName: mdFileName,
        title: title,
      ),
    );
  }
}

class PolicyDialogContent extends StatefulWidget {
  final String mdFileName;
  final String title;
  const PolicyDialogContent(
      {Key? key, required this.mdFileName, required this.title})
      : super(key: key);

  @override
  _PolicyDialogContentState createState() => _PolicyDialogContentState();
}

class _PolicyDialogContentState extends State<PolicyDialogContent> {
  late Future<String> _futureMarkdown;

  @override
  void initState() {
    super.initState();
    _futureMarkdown = _loadMarkdown();
  }

  Future<String> _loadMarkdown() async {
    return await rootBundle.loadString('assets/drawer/${widget.mdFileName}');
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              widget.title,
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _futureMarkdown,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('Error loading markdown'),
                  );
                } else {
                  final markdownData = snapshot.data as String;
                  final markdownStyleSheet = MarkdownStyleSheet(
                    p: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      letterSpacing: 0.4,
                      wordSpacing: 2.5,
                    ),
                  );
                  return Markdown(
                    data: markdownData,
                    styleSheet: markdownStyleSheet,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
