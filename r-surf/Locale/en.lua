local Translations = {
    prog = {
        ["spk"] = "Speaking to reysel..."
     },
     help = {
        ["text"] = "~t~G~w~ - Talking to reysel",
        ["dont"] = "You have already rented a board",
        ["save"] = "~t~G~w~ - Save tabla"
     },
     menu = {
        ["tile"] = "Rent",
        ["buttomtitle"] = "Rent a table",
        ["buttomdesc"] = "Rent a surfboard and have a good time with your friends, if you don't have one you're a 7-0 noob",
        ["close"] = "Close"
     },
     noti = {
        ["info"] = "You have rented a surfboard.",
        ["savet"] = "You saved the table. Now you can rent another."
     }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
