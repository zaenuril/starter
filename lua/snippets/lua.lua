local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Love2D snippets
ls.add_snippets("lua", {
  -- Love2D main structure
  s("love_main", {
    t({
      "function love.load()",
      "\t",
    }),
    i(1, "-- Initialize game variables"),
    t({
      "",
      "end",
      "",
      "function love.update(dt)",
      "\t",
    }),
    i(2, "-- Update game logic"),
    t({
      "",
      "end",
      "",
      "function love.draw()",
      "\t",
    }),
    i(3, "-- Draw game"),
    t({
      "",
      "end",
    }),
  }),

  -- love.load
  s("love_load", {
    t({
      "function love.load()",
      "\t",
    }),
    i(1),
    t({
      "",
      "end",
    }),
  }),

  -- love.update
  s("love_update", {
    t({
      "function love.update(dt)",
      "\t",
    }),
    i(1),
    t({
      "",
      "end",
    }),
  }),

  -- love.draw
  s("love_draw", {
    t({
      "function love.draw()",
      "\t",
    }),
    i(1),
    t({
      "",
      "end",
    }),
  }),

  -- love.keypressed
  s("love_keypressed", {
    t({
      "function love.keypressed(key)",
      "\tif key == \"",
    }),
    i(1, "escape"),
    t({
      "\" then",
      "\t\tlove.event.quit()",
      "\tend",
      "end",
    }),
  }),

  -- love.mousepressed
  s("love_mousepressed", {
    t({
      "function love.mousepressed(x, y, button)",
      "\t",
    }),
    i(1),
    t({
      "",
      "end",
    }),
  }),

  -- Draw rectangle
  s("love_rect", {
    t("love.graphics.rectangle(\""),
    i(1, "fill"),
    t("\", "),
    i(2, "x"),
    t(", "),
    i(3, "y"),
    t(", "),
    i(4, "width"),
    t(", "),
    i(5, "height"),
    t(")"),
  }),

  -- Draw circle
  s("love_circle", {
    t("love.graphics.circle(\""),
    i(1, "fill"),
    t("\", "),
    i(2, "x"),
    t(", "),
    i(3, "y"),
    t(", "),
    i(4, "radius"),
    t(")"),
  }),

  -- Set color
  s("love_color", {
    t("love.graphics.setColor("),
    i(1, "1"),
    t(", "),
    i(2, "1"),
    t(", "),
    i(3, "1"),
    t(")"),
  }),

  -- Print text
  s("love_print", {
    t("love.graphics.print(\""),
    i(1, "text"),
    t("\", "),
    i(2, "x"),
    t(", "),
    i(3, "y"),
    t(")"),
  }),
})
