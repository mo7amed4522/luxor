import "package:flutter/material.dart";

class CustomAppBarWidget extends StatelessWidget {
  final String? titleAppbar;
  final void Function()? onTapIcon;
  final void Function()? onTapSearch;
  const CustomAppBarWidget(
      {super.key, this.onTapSearch, this.onTapIcon, this.titleAppbar});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: GestureDetector(
                  onTap: onTapSearch,
                  child:const Icon(Icons.search),
                ),
                hintText: titleAppbar,
                hintStyle: const TextStyle(fontSize: 18),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: GestureDetector(
              onTap: onTapIcon,
              child: Icon(Icons.notifications_active_outlined,
                  size: 30, color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}
