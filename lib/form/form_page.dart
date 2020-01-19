import 'package:flutter/material.dart';
import 'package:monopoly_machine/comum/models/user_mode.dart';
import 'package:monopoly_machine/comum/providers/user_list_provider.dart';
import 'package:monopoly_machine/comum/widgets/page.dart';
import 'package:monopoly_machine/comum/widgets/user_profile_image.dart';
import 'package:monopoly_machine/form/widgets/bottom_sheet_bottons.dart';
import 'package:monopoly_machine/form/widgets/input_text.dart';
import 'package:provider/provider.dart';

class FormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int _imageIndex;
  GlobalKey<FormState> _formkey;

  FocusNode _nameNode;
  FocusNode _nicknameNode;

  TextEditingController _nameController;
  TextEditingController _nicknameController;

  @override
  void initState() {
    _imageIndex = 0;
    _formkey = GlobalKey<FormState>();

    _nameNode = FocusNode();
    _nicknameNode = FocusNode();

    _nameController = TextEditingController();
    _nicknameController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _nameNode.dispose();
    _nicknameNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Page(
        title: "User Form",
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Form(
                autovalidate: true,
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'User Profile',
                        style:
                            Theme.of(context).inputDecorationTheme.labelStyle,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        constraints: BoxConstraints(maxHeight: 80),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          itemBuilder: (context, index) => GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: UserProfileImage(
                                imageIndex: index,
                                size: 80,
                                disabled: _imageIndex != index,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _imageIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: InputText(
                        controller: _nameController,
                        nodeFocus: _nameNode,
                        nextNodeFocus: _nicknameNode,
                        label: 'Name',
                      ),
                    ),
                    Flexible(
                      child: InputText(
                        controller: _nicknameController,
                        nodeFocus: _nicknameNode,
                        label: 'Nickname',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomSheetButtons(onFinish: () {
              if (_formkey.currentState.validate()) {
                Provider.of<UserListProvider>(context, listen: false).addUser(
                  UserModel(
                    name: _nameController.text,
                    nickName: _nicknameController.text,
                    imageIndex: _imageIndex,
                  ),
                );
                Navigator.of(context).pop();
              }
            }),
          ],
        ),
      );
}
