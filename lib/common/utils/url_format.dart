String formatUrl(String url) {
  if(url.contains("http://") || url.contains("https://")) {
    return url;
  } else {
    return "http://192.168.1.13:8080/" + url;
  }
}