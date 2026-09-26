# Mugsy's Digital Tap List
# 192 x 32 GLANCE display
# Four rotating beer pages

def draw_beer(c, name, style, abv, price):
    c.fill("black")

    # Top header
    c.rect(0, 0, c.width - 1, 8, fill = "amber")
    c.text("MUGSY'S", 4, 1, font = "5x7", color = "black")

    # Beer name
    c.text(name.upper(), 4, 10, font = "7x12", color = "white")

    # Style
    c.text(style.upper(), 4, 24, font = "5x7", color = "gray")

    # ABV and price
    c.text("ABV " + abv.upper(), c.width - 4, 10,
           font = "5x7", color = "amber", align = "right")

    c.text("PINT " + price.upper(), c.width - 4, 22,
           font = "5x7", color = "green", align = "right")


def beer1(c, ctx):
    name = ctx.inputs.get("beer1name", "BEER ONE")
    style = ctx.inputs.get("beer1style", "STYLE")
    abv = ctx.inputs.get("beer1abv", "5.0%")
    price = ctx.inputs.get("beer1price", "$5.00")
    draw_beer(c, name, style, abv, price)


def beer2(c, ctx):
    name = ctx.inputs.get("beer2name", "BEER TWO")
    style = ctx.inputs.get("beer2style", "STYLE")
    abv = ctx.inputs.get("beer2abv", "5.0%")
    price = ctx.inputs.get("beer2price", "$5.00")
    draw_beer(c, name, style, abv, price)


def beer3(c, ctx):
    name = ctx.inputs.get("beer3name", "BEER THREE")
    style = ctx.inputs.get("beer3style", "STYLE")
    abv = ctx.inputs.get("beer3abv", "5.0%")
    price = ctx.inputs.get("beer3price", "$5.00")
    draw_beer(c, name, style, abv, price)


def beer4(c, ctx):
    name = ctx.inputs.get("beer4name", "BEER FOUR")
    style = ctx.inputs.get("beer4style", "STYLE")
    abv = ctx.inputs.get("beer4abv", "5.0%")
    price = ctx.inputs.get("beer4price", "$5.00")
    draw_beer(c, name, style, abv, price)