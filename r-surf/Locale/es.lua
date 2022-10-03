local Translations = {
    prog = {
        ["spk"] = "Hablando con reysel..."
     },
     help = {
        ["text"] = "~t~G~w~ - Hablar con reysel",
        ["dont"] = "Ya has alquilado una tabla."
     },
     menu = {
        ["tile"] = "Alquiler",
        ["buttomtitle"] = "Alquilar una tabla",
        ["buttomdesc"] = "Alquila una tabla de surf y pasa un buen rato con tus amigos, si no tienes eres un noob 7-0",
        ["close"] = "Cerrar"
     },
     noti = {
        ["info"] = "Has alquilado una tabla de surf."
     }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})