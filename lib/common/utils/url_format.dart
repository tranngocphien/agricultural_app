String formatUrl(String url) {
  if(url.contains("http://") || url.contains("https://")) {
    return url;
  } else {
    return "https://agri-api.estatekey.click/" + url;
  }
}