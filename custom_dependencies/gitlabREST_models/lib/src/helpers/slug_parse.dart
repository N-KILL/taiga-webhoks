/// This [slugParse] method is for convert an string into an `slug` format.<br>
/// `slug` it's a human-readable part of a URL that identifies
/// a particular resource, are usually created by converting text into a
/// URL-friendly format, often by replacing spaces and special characters
/// with dashes or underscores, removing accents, and converting the text to
/// lowercase. <br> 
String slugParse(String input) {
  // Remove special characters, replace spaces with dashes, and convert to
  // lowercase
  var slug = input
      .replaceAll(RegExp(r'[^\w\s-]'), '')
      .toLowerCase()
      .replaceAll(' ', '-');

  // Remove multiple consecutive dashes
  slug = slug.replaceAll(RegExp(r'\-+'), '-');

  // Remove leading and trailing dashes
  slug = slug.replaceAll(RegExp(r'^-+|-+$'), '');

  return slug;
}

void main() {
  const text = 'TestData!';
  slugParse(text);
}
