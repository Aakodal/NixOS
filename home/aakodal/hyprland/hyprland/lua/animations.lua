hl.curve("overshot", {
    type = "bezier",
    points = { {0.13, 0.99}, {0.29, 1.1} }
})

hl.config({ animations = { enabled = true } })

hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "overshot", style = "slide" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "overshot", style = "slide" })
