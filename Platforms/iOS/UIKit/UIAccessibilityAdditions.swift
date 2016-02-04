
protocol UIPickerViewAccessibilityDelegate : UIPickerViewDelegate {
  @available(iOS 2.0, *)
  optional func pickerView(pickerView: UIPickerView, accessibilityLabelForComponent component: Int) -> String?
  @available(iOS 2.0, *)
  optional func pickerView(pickerView: UIPickerView, accessibilityHintForComponent component: Int) -> String?
}
protocol UIScrollViewAccessibilityDelegate : UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func accessibilityScrollStatusForScrollView(scrollView: UIScrollView) -> String?
}