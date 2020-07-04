let Player = {
    player: null,

    init(domId, playerId, onReady) {
        window.onYouTubeIframeAPIReady = () => {
            this.onIframeReady(domId, playerId, onReady)
        }
        let youtubeScriptTag = document.createElement("script")
        youtubeScriptTag.src = "//www.youtube.com/iframe_api"
        document.head.appendChild(youtubeScriptTag)
    },
}