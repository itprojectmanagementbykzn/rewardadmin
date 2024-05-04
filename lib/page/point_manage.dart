import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:rewardadmin/utils.dart';
import 'package:rewardadmin/widget/scrollable_widget.dart';
import 'package:flutter/material.dart';
import '../config/responsive.dart';
import '../model/user.dart';
import '../style/colors.dart';
import '../widget/profile_widget.dart';

class PointManage extends StatefulWidget {
  @override
  _PointManageState createState() => _PointManageState();
}

class _PointManageState extends State<PointManage> {
  List<User> users = [];
  List<User> selectedUsers = [];
  final List<String> items = [
    '+',
    '-',
  ];

  String? selectedValue;

  @override
  void initState() {
    super.initState();

    init();
  }

  Future init() async {
    final users = await Utils.loadUsers();

    setState(() => this.users = users);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.white,
          actions: [
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: Responsive.isDesktop(context) ? 1 : 3,
              child: Padding(
                padding: const EdgeInsets.only(right: 150),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.white,
                      contentPadding:
                          const EdgeInsets.only(left: 40.0, right: 40),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: AppColors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: AppColors.iconGray),
                      ),
                      prefixIcon:
                          const Icon(Icons.search, color: AppColors.shopColor),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                          color: AppColors.secondary, fontSize: 14)),
                ),
              ),
            ),
          ],
        ),
        body: users.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Expanded(child: ScrollableWidget(child: buildDataTable())),
                  buildSubmit(),
                ],
              ),
      );

  Widget buildDataTable() {
    final columns = [
      'Profile',
      '📞 Phone No',
      '🧑Name',
      // '📧 Email',
      '🌟Total Points',
      'Choose +/-',
      '🎁Enter Point',
      '✌️Action'
    ];

    return DataTable(
      onSelectAll: (isSelectedAll) {
        setState(() => selectedUsers = isSelectedAll! ? users : []);

        Utils.showSnackBar(context, 'All Selected: $isSelectedAll');
      },
      columns: getColumns(columns),
      rows: getRows(users),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
          ))
      .toList();

  List<DataRow> getRows(List<User> users) => users
      .map((User user) => DataRow(
            selected: selectedUsers.contains(user),
            onSelectChanged: (isSelected) => setState(() {
              final isAdding = isSelected != null && isSelected;

              isAdding ? selectedUsers.add(user) : selectedUsers.remove(user);
            }),
            cells: [
              DataCell(ProfileWidget(code: user.code)),

              DataCell(
                SizedBox(
                  width: 100,
                  child: Text(user.phone),
                ),
              ),
              DataCell(
                SizedBox(
                  width: 100,
                  child: Text(user.name),
                ),
              ),

              // DataCell(
              //   Container(
              //     width: 100,
              //     child: Text(user.email),
              //   ),
              // ),
              DataCell(
                Center(
                  child: Container(
                    width: 100,
                    child: Center(child: Text(user.totalpoint)),
                  ),
                ),
              ),
              DataCell(
                Container(
                  width: 70,
                  height: 35,
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: const Row(
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Text(
                                '❓',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: items
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (String? value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 50,
                          width: 100,
                          padding: const EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: Colors.white,
                          ),
                          elevation: 2,
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.black,
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          maxHeight: 80,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          offset: const Offset(-20, 0),
                          scrollbarTheme: ScrollbarThemeData(
                            radius: const Radius.circular(5),
                            thickness: MaterialStateProperty.all<double>(6),
                            thumbVisibility:
                                MaterialStateProperty.all<bool>(true),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Container(
                    width: 70,
                    height: 35,
                    child: Center(
                      child: TextFormField(
                        // textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                        // initialValue: 'Enter Point',
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // labelText: 'Enter Point',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              DataCell(
                Container(
                  width: 100,
                  height: 35,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: const BorderSide(
                            color: Color(0xffFF9166),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Update"),
                  ),
                ),
              ),
            ],
          ))
      .toList();

  Widget buildSubmit() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        color: Colors.black,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            minimumSize: const Size.fromHeight(40),
          ),
          child: Text('Select ${selectedUsers.length} Users'),
          onPressed: () {
            final names = selectedUsers.map((user) => user.name).join(', ');

            Utils.showSnackBar(context, 'Selected users: $names');
          },
        ),
      );
}
