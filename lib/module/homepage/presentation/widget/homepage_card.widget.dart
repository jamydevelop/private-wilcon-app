import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class HomepageCardWidget extends StatefulWidget {
  const HomepageCardWidget({
    super.key,
    required this.mainTitle,
    required this.subTitle,
    required this.rowTitles,
    required this.rowContents,
  });
  final String mainTitle;
  final String subTitle;
  final List<String> rowTitles;
  final List<String> rowContents;

  @override
  HomepageCardWidgetState createState() => HomepageCardWidgetState();
}

class HomepageCardWidgetState extends State<HomepageCardWidget> {
  bool _isExpanded = true;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  BoxDecoration _getTextDecoration(int index) {
    if (index == 2) {
      if (widget.rowContents[index] == "Acknowledge" ||
          widget.rowContents[index] == "Active") {
        return BoxDecoration(
          color: const Color(0xFFD4F4EC),
          borderRadius: BorderRadius.circular(30), // 30px border radius
        );
      } else if (widget.rowContents[index] == "For checking of inspector") {
        return BoxDecoration(
          color: const Color(0xFFFFEECC),
          borderRadius: BorderRadius.circular(30), // 30px border radius
        );
      } else if (widget.rowContents[index] == "Not Validated") {
        return BoxDecoration(
          color: const Color(0xFFFDDDD3),
          borderRadius: BorderRadius.circular(30), // 30px border radius
        );
      } else if (widget.rowContents[index] == "Inactive") {
        return BoxDecoration(
          color: const Color(0xFFFDDDD3),
          borderRadius: BorderRadius.circular(30), // 30px border radius
        );
      }
    }
    return const BoxDecoration(); // Default (no background change)
  }

  TextStyle _getTextStyle(int index) {
    if (index == 2) {
      if (widget.rowContents[index] == "Acknowledge" ||
          widget.rowContents[index] == "Active") {
        return const TextStyle(color: Color(0xFF10513F));
      } else if (widget.rowContents[index] == "For checking of inspector") {
        return const TextStyle(color: Color(0xFF663000));
      } else if (widget.rowContents[index] == "Not Validated" ||
          widget.rowContents[index] == "Inactive") {
        return const TextStyle(color: Color(0xFF61220F));
      }
    }
    return const TextStyle(color: Colors.black87); // Default text color
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.zero, // Explicitly set margin to zero
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Header with arrow icon
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              color: Color(0xFF15422B), // Header background color
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      widget.mainTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                        width: 8), // Spacing between text and subTitle badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color:
                            const Color(0xFFD4F4EC), // Updated background color
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        widget.subTitle,
                        style: const TextStyle(
                          color: Color(0xFF10513F), // Updated text color
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: const Color(0xFFDCB40D), // Arrow icon color
                  ),
                  onPressed: _toggleExpansion,
                ),
              ],
            ),
          ),
          // Body content with alternating colors
          if (_isExpanded)
            Column(
              children: <Widget>[
                // ignore: always_specify_types
                ...List.generate(
                  widget.rowTitles.length,
                  (int index) => Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.white : Colors.grey[200]!,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.rowTitles[index],
                          style: const TextStyle(color: Colors.black87),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: _getTextDecoration(index),
                          child: Text(
                            widget.rowContents[index],
                            style: _getTextStyle(index),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // View Details Button
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 12.0), // 12px margin on all sides
                  child: SizedBox(
                    width: double.infinity, // Full width
                    child: ElevatedButton(
                      onPressed: () {
                        context.go("/checklist_summary_page");
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green.shade900,
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.green.shade900),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: const Size(double.infinity, 44),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("View Details"),
                          SizedBox(width: 8), // Spacing between text and icon
                          Icon(Icons.arrow_forward, size: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
