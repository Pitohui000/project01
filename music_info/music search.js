function searchMusic() {
    var keyword = document.getElementById("searchInput").value;

    // 使用 XMLHttpRequest 來發送 AJAX 請求
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var results = JSON.parse(xhr.responseText);
            displayResults(results);
        }
    };
    xhr.open("GET", "search.php?keyword=" + keyword, true);
    xhr.send();
}

function displayResults(results) {
    var resultsDiv = document.getElementById("results");
resultsDiv.innerHTML = ""; // 清空先前的結果

results.forEach(function(item) {
var videoId = item.youtube_id;
var title = item.title;
var description = item.description;

// 創建嵌入式 YouTube 播放器的 HTML 代碼
var iframeCode = `<iframe width="560" height="315" src="https://www.youtube.com/embed/${videoId}" title="${title}" frameborder="0" allowfullscreen></iframe>`;

// 顯示嵌入式播放器和影片資訊
resultsDiv.innerHTML += `
    <div>
        ${iframeCode}
        <h2>${title}</h2>
        <p>${description}</p>
    </div>
`;
});
}