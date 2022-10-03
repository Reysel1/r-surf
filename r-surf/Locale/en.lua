local Translations = {
    prog = {
        ["spk"] = "Speaking to reysel..."
     },
     help = {
        ["text"] = "~t~G~w~ - Talking to reysel",
        ["dont"] = "You have already rented a board"
     },
     menu = {
        ["tile"] = "Rent",
        ["buttomtitle"] = "Rent a table",
        ["buttomdesc"] = "Rent a surfboard and have a good time with your friends, if you don't have one you're a 7-0 noob",
        ["close"] = "Close"
     },
     noti = {
        ["info"] = "You have rented a surfboard."
     }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})