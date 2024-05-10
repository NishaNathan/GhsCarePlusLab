import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ghscareplus/commonwidget/texformfieldwidget.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/imageres.dart';
import 'package:ghscareplus/controller/popupcontroller.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:pretty_animated_buttons/widgets/pretty_capsule_button.dart';

class MobileLandingPage extends StatefulWidget {
  const MobileLandingPage({super.key});

  @override
  State<MobileLandingPage> createState() => _MobileLandingPageState();
}

class _MobileLandingPageState extends State<MobileLandingPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SizedBox(
          // color: Colors.red,
          width: width,
          height: height * 1,
          child: Image.asset(
            'assets/images/GHS-GIF.gif',
            fit: BoxFit.fitHeight,
            width: width,
          ),
        ),
        Positioned(
          // textDirection: TextDirection.ltr,
          top: height * 0.5,
          left: 160,
          child: PrettyCapsuleButton(
            label: 'Get Quote'.toUpperCase(),
            labelStyle: const TextStyle(fontWeight: FontWeight.w900),
            bgColor: buttonColor,
            onPressed: () {
              _showCheckBoxDialog(context);
            },
          ),
        ),
      ],
    );
  }
}

void _showCheckBoxDialog(BuildContext context) {
  final PopUpController popupCtrl = Get.put(PopUpController());
  bool isHoverSubmit = false;
  bool isHoverPopAlert = false;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        /* SizedBox(
                          height: 300,
                          child: Image.asset(
                            popupimage,
                            fit: BoxFit.cover,
                                             
                          ),
                        ), */
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30.0,
                                left: 20.0,
                                right: 20.0,
                                bottom: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Test that we undertake',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const Text(
                                  textAlign: TextAlign.center,
                                  'Introducing best health tests at best rates. Select a test and we will send you the package details to your inbox.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  height: 300,
                                  child: Image.asset(
                                    popupimagemobile,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                IntrinsicHeight(
                                  child: MultiSelectDialogField(
                                    listType: MultiSelectListType.LIST,
                                    checkColor: Colors.white,
                                    dialogHeight: 300,
                                    dialogWidth: 300,
                                    backgroundColor: Colors.white,
                                    selectedColor: tealColor,
                                    searchIcon: Icon(
                                      Icons.search,
                                      color: tealColor,
                                    ),
                                    chipDisplay: MultiSelectChipDisplay(
                                      chipColor: textColor,
                                      textStyle:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    searchable: true,
                                    items: popupCtrl.labtestdata
                                        .map((test) =>
                                            MultiSelectItem(test, test))
                                        .toList(),
                                    cancelText: Text(
                                      "Cancel",
                                      style: TextStyle(color: textColor),
                                    ),
                                    confirmText: Text(
                                      "OK",
                                      style: TextStyle(color: textColor),
                                    ),
                                    title: Text(
                                      "Search test",
                                      style: TextStyle(
                                          fontSize: 14, color: textColor),
                                    ),
                                    decoration: BoxDecoration(
                                      //color: Colors.blue.withOpacity(0.1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(0)),
                                      border: Border.all(
                                        color: Colors.black,
                                        //width: 2,
                                      ),
                                    ),
                                    buttonIcon: Icon(
                                      Icons.arrow_drop_down_circle_sharp,
                                      color: textColor,
                                    ),
                                    buttonText: const Text(
                                      "Select test",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    isDismissible: true,
                                    onConfirm: (results) {
                                      //Gets the selected test from dropdown and stores in selectedtest
                                      popupCtrl.selectedTests = [];
                                      popupCtrl.selectedtest = results;
                                      print(popupCtrl.selectedtest);
                                    },
                                  ),
                                ),
                                TextBoxWidget(
                                  controller: popupCtrl.username,
                                  fontSize: 14,
                                  hintTextColor: Colors.grey.shade500,
                                  focusedborderSide: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  enabledBorderColor:
                                      const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                                  cursorColor: Colors.grey,
                                  fillColor: Colors.transparent,
                                  hintText: 'Your Name',
                                  cursorHeight: 20,
                                  fontColor: Colors.black,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(25),
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[a-zA-Z\s]+')),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextBoxWidget(
                                  fontSize: 14,
                                  hintTextColor: Colors.grey.shade500,
                                  focusedborderSide: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  enabledBorderColor:
                                      const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                                  controller: popupCtrl.emailCntrl,
                                  cursorColor: Colors.grey,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  fillColor: Colors.transparent,
                                  hintText: 'Your Email',
                                  cursorHeight: 20,
                                  fontColor: Colors.black,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'^[a-zA-Z0-9_@.-]+')),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextBoxWidget(
                                  fontSize: 14,
                                  hintTextColor: Colors.grey.shade500,
                                  focusedborderSide: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  enabledBorderColor:
                                      const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                                  controller: popupCtrl.mobnoCtrl,
                                  cursorColor: Colors.grey,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  fillColor: Colors.transparent,
                                  hintText: 'Your Phone',
                                  cursorHeight: 20,
                                  fontColor: Colors.black,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10),
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      isHoverSubmit = true;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      isHoverSubmit = false;
                                    });
                                  },
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: isHoverSubmit
                                            ? textColor
                                            : Colors.white,
                                        foregroundColor: isHoverSubmit
                                            ? Colors.white
                                            : textColor,
                                        side: BorderSide(color: textColor),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0))),
                                    onPressed: () async {
                                      String errorMessage =
                                          popupCtrl.validateInputs();

                                      if (errorMessage.isEmpty) {
                                        showDialog(
                                          context: context,
                                          barrierDismissible: false,
                                          builder: (BuildContext context) {
                                            return Center(
                                              child: CircularProgressIndicator(
                                                color: textColor,
                                              ),
                                            );
                                          },
                                        );

                                        bool userEmailSent =
                                            await popupCtrl.sendUserEmail(
                                                selectedTests:
                                                    popupCtrl.selectedtest,
                                                email:
                                                    popupCtrl.emailCntrl.text,
                                                name: popupCtrl.username.text,
                                                mobno:
                                                    popupCtrl.mobnoCtrl.text);

                                        if (userEmailSent) {
                                          Navigator.of(context).pop();
                                          // Display success alert
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.white,
                                                title: Center(
                                                  child: Text(
                                                    'Success'.toUpperCase(),
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                content: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Image.asset(
                                                        width: 200,
                                                        height: 100,
                                                        'assets/images/successicongreen.gif'),
                                                    const Text(
                                                        'Mail sent successfully.'),
                                                  ],
                                                ),
                                                actions: <Widget>[
                                                  Center(
                                                    child: MouseRegion(
                                                      onEnter: (_) {
                                                        setState(() {
                                                          isHoverPopAlert =
                                                              true;
                                                        });
                                                      },
                                                      onExit: (_) {
                                                        setState(() {
                                                          isHoverPopAlert =
                                                              false;
                                                        });
                                                      },
                                                      child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor:
                                                                isHoverPopAlert
                                                                    ? const Color.fromRGBO(
                                                                        1,
                                                                        83,
                                                                        143,
                                                                        1)
                                                                    : Colors
                                                                        .white,
                                                            foregroundColor:
                                                                isHoverPopAlert
                                                                    ? Colors
                                                                        .white
                                                                    : const Color.fromRGBO(
                                                                        1,
                                                                        83,
                                                                        143,
                                                                        1),
                                                            side: BorderSide(
                                                                color:
                                                                    textColor),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        0))),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: const Text('OK'),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          popupCtrl.emailCntrl.clear();
                                          popupCtrl.username.clear();
                                          popupCtrl.mobnoCtrl.clear();
                                          popupCtrl.selectedTests.clear();
                                        } else {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.white,
                                                title: Center(
                                                  child: Text(
                                                    'Error'.toUpperCase(),
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                content: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Image.asset(
                                                        width: 200,
                                                        height: 100,
                                                        'assets/images/erroricon.gif'),
                                                    const Text(
                                                        'Failed to send email'),
                                                  ],
                                                ),
                                                actions: <Widget>[
                                                  Center(
                                                    child: MouseRegion(
                                                      onEnter: (_) {
                                                        setState(() {
                                                          isHoverPopAlert =
                                                              true;
                                                        });
                                                      },
                                                      onExit: (_) {
                                                        setState(() {
                                                          isHoverPopAlert =
                                                              false;
                                                        });
                                                      },
                                                      child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor:
                                                                isHoverPopAlert
                                                                    ? const Color.fromRGBO(
                                                                        1,
                                                                        83,
                                                                        143,
                                                                        1)
                                                                    : Colors
                                                                        .white,
                                                            foregroundColor:
                                                                isHoverPopAlert
                                                                    ? Colors
                                                                        .white
                                                                    : const Color.fromRGBO(
                                                                        1,
                                                                        83,
                                                                        143,
                                                                        1),
                                                            side: BorderSide(
                                                                color:
                                                                    textColor),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        0))),
                                                        onPressed: () =>
                                                            Navigator.of(
                                                                    context)
                                                                .pop(),
                                                        child: const Text('OK'),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      } else {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor: Colors.white,
                                              title: Center(
                                                child: Text(
                                                  'Error'.toUpperCase(),
                                                  style: TextStyle(
                                                      color: textColor,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Image.asset(
                                                      width: 200,
                                                      height: 100,
                                                      'assets/images/erroricon.gif'),
                                                  Text(errorMessage),
                                                ],
                                              ),
                                              actions: <Widget>[
                                                Center(
                                                  child: MouseRegion(
                                                    onEnter: (_) {
                                                      setState(() {
                                                        isHoverPopAlert = true;
                                                      });
                                                    },
                                                    onExit: (_) {
                                                      setState(() {
                                                        isHoverPopAlert = false;
                                                      });
                                                    },
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          backgroundColor: isHoverPopAlert
                                                              ? const Color.fromRGBO(
                                                                  1, 83, 143, 1)
                                                              : Colors.white,
                                                          foregroundColor:
                                                              isHoverPopAlert
                                                                  ? Colors.white
                                                                  : const Color
                                                                      .fromRGBO(
                                                                      1,
                                                                      83,
                                                                      143,
                                                                      1),
                                                          side: BorderSide(
                                                              color: textColor),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      0))),
                                                      onPressed: () =>
                                                          Navigator.of(context)
                                                              .pop(),
                                                      child: const Text('OK'),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: const Text('Submit'),
                                  ),
                                ),
                                const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: CircleAvatar(
                            radius: 20,
                            child: CircleAvatar(
                              backgroundColor: textColor,
                              radius: 40,
                              child: const Icon(
                                Icons.close,
                                size: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
