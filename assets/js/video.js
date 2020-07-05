import Player from "./player"

let Video = {

    init(socket, element){if(!element){return}
        let playerId = element.getAttribute("data-player-id")
        let videoId = element.getAttribute("data-id")
        socket.connect()
        Player.init(element.id, playerId, () => {
            this.onReady(videoId, socket)
        })
    },

    

}