function openAscentWindow() {
  const url = chrome.runtime.getURL("ascent-sheet.html");
  chrome.windows.create({
    url: url,
    type: "popup",
    width: 1220,
    height: 820
  });
}

chrome.action.onClicked.addListener(openAscentWindow);

if (chrome.omnibox) {
  chrome.omnibox.onInputEntered.addListener(() => {
    openAscentWindow();
  });
}
