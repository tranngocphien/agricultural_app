String formatUrl(String url) {
  if(url.contains("http://") || url.contains("https://")) {
    return url;
  } else {
    return "http://192.168.1.5:8080/" + url;
  }
}