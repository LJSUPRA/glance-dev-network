# Mugsy's Pub and Patio
# Scroll Pro layout
# 23 taps
# Two beers per page
# 384 x 32 display

def draw_banner(c):
    c.rect(0, 0, c.width - 1, 8, fill = "green")

    c.text(
        "MUGSY'S PUB & PATIO",
        c.width // 2,
        1,
        font = "5x7",
        color = "black",
        align = "center"
    )


def draw_beer(c, x0, name, style, abv):
    name = name.upper()
    style = style.upper()
    abv = abv.upper()

    left_x = x0 + 8
    abv_x = x0 + 182

    # Empty tap
    if name == "" or name == "AVAILABLE TAP":
        c.text(
            "AVAILABLE TAP",
            x0 + 96,
            11,
            font = "5x7",
            color = "green",
            align = "center"
        )

        c.text(
            "READY FOR NEXT KEG",
            x0 + 96,
            24,
            font = "4x5",
            color = "gray",
            align = "center"
        )
        return

    # Beer name
    # Bigger display font
    c.text(
        name,
        left_x,
        10,
        font = "7x12",
        color = "white"
    )

    # Bottom line: style + ABV
    if style != "":
        c.text(
            style,
            left_x,
            25,
            font = "4x5",
            color = "gray"
        )

    if abv != "":
        c.text(
            "ABV " + abv,
            abv_x,
            25,
            font = "4x5",
            color = "green",
            align = "right"
        )


def draw_page(c, left, right):
    c.fill("black")
    draw_banner(c)

    # Center divider starts below the header
    c.rect(191, 9, 192, 30, fill = "green")

    draw_beer(
        c,
        0,
        left[0],
        left[1],
        left[2]
    )

    if right != None:
        draw_beer(
            c,
            192,
            right[0],
            right[1],
            right[2]
        )


def page1(c, ctx):
    left = [
        ctx.inputs.get("tap1name", "BUD LIGHT"),
        ctx.inputs.get("tap1style", "LIGHT LAGER"),
        ctx.inputs.get("tap1abv", "4.2%"),
    ]

    right = [
        ctx.inputs.get("tap2name", "MODELO ESPECIAL"),
        ctx.inputs.get("tap2style", "MEXICAN LAGER"),
        ctx.inputs.get("tap2abv", "4.4%"),
    ]

    draw_page(c, left, right)


def page2(c, ctx):
    left = [
        ctx.inputs.get("tap3name", "CORONA PREMIER"),
        ctx.inputs.get("tap3style", "LIGHT LAGER"),
        ctx.inputs.get("tap3abv", "4.0%"),
    ]

    right = [
        ctx.inputs.get("tap4name", "MICHELOB ULTRA"),
        ctx.inputs.get("tap4style", "LIGHT LAGER"),
        ctx.inputs.get("tap4abv", "4.2%"),
    ]

    draw_page(c, left, right)


def page3(c, ctx):
    left = [
        ctx.inputs.get("tap5name", "YUENGLING LAGER"),
        ctx.inputs.get("tap5style", "TRADITIONAL LAGER"),
        ctx.inputs.get("tap5abv", "4.5%"),
    ]

    right = [
        ctx.inputs.get("tap6name", "MILLER LITE"),
        ctx.inputs.get("tap6style", "LIGHT LAGER"),
        ctx.inputs.get("tap6abv", "4.2%"),
    ]

    draw_page(c, left, right)


def page4(c, ctx):
    left = [
        ctx.inputs.get("tap7name", "GOOSE ISLAND IPA"),
        ctx.inputs.get("tap7style", "IPA"),
        ctx.inputs.get("tap7abv", "5.9%"),
    ]

    right = [
        ctx.inputs.get("tap8name", "OH, SURF"),
        ctx.inputs.get("tap8style", "LAND-GRANT"),
        ctx.inputs.get("tap8abv", "TBD"),
    ]

    draw_page(c, left, right)


def page5(c, ctx):
    left = [
        ctx.inputs.get("tap9name", "L.G. MUGSY LIGHT"),
        ctx.inputs.get("tap9style", "LAND-GRANT"),
        ctx.inputs.get("tap9abv", "TBD"),
    ]

    right = [
        ctx.inputs.get("tap10name", "L.G. ALL WELCOME"),
        ctx.inputs.get("tap10style", "LAND-GRANT"),
        ctx.inputs.get("tap10abv", "TBD"),
    ]

    draw_page(c, left, right)


def page6(c, ctx):
    left = [
        ctx.inputs.get("tap11name", "BLUE MOON"),
        ctx.inputs.get("tap11style", "BELGIAN WHITE"),
        ctx.inputs.get("tap11abv", "5.4%"),
    ]

    right = [
        ctx.inputs.get("tap12name", "GUINNESS"),
        ctx.inputs.get("tap12style", "IRISH STOUT"),
        ctx.inputs.get("tap12abv", "4.2%"),
    ]

    draw_page(c, left, right)


def page7(c, ctx):
    left = [
        ctx.inputs.get("tap13name", "SUMMER SHANDY"),
        ctx.inputs.get("tap13style", "LEINENKUGEL'S"),
        ctx.inputs.get("tap13abv", "4.2%"),
    ]

    right = [
        ctx.inputs.get("tap14name", "RHINEGEIST TRUTH"),
        ctx.inputs.get("tap14style", "IPA"),
        ctx.inputs.get("tap14abv", "7.2%"),
    ]

    draw_page(c, left, right)


def page8(c, ctx):
    left = [
        ctx.inputs.get("tap15name", "CBC IPA"),
        ctx.inputs.get("tap15style", "COLUMBUS BREWING"),
        ctx.inputs.get("tap15abv", "6.3%"),
    ]

    right = [
        ctx.inputs.get("tap16name", "COORS LIGHT"),
        ctx.inputs.get("tap16style", "LIGHT LAGER"),
        ctx.inputs.get("tap16abv", "4.2%"),
    ]

    draw_page(c, left, right)


def page9(c, ctx):
    left = [
        ctx.inputs.get("tap17name", "DOWNEAST CIDER"),
        ctx.inputs.get("tap17style", "ORIGINAL BLEND"),
        ctx.inputs.get("tap17abv", "5.1%"),
    ]

    right = [
        ctx.inputs.get("tap18name", "PACIFICO"),
        ctx.inputs.get("tap18style", "MEXICAN LAGER"),
        ctx.inputs.get("tap18abv", "4.4%"),
    ]

    draw_page(c, left, right)


def page10(c, ctx):
    left = [
        ctx.inputs.get("tap19name", "AVAILABLE TAP"),
        ctx.inputs.get("tap19style", ""),
        ctx.inputs.get("tap19abv", ""),
    ]

    right = [
        ctx.inputs.get("tap20name", "AVAILABLE TAP"),
        ctx.inputs.get("tap20style", ""),
        ctx.inputs.get("tap20abv", ""),
    ]

    draw_page(c, left, right)


def page11(c, ctx):
    left = [
        ctx.inputs.get("tap21name", "AVAILABLE TAP"),
        ctx.inputs.get("tap21style", ""),
        ctx.inputs.get("tap21abv", ""),
    ]

    right = [
        ctx.inputs.get("tap22name", "AVAILABLE TAP"),
        ctx.inputs.get("tap22style", ""),
        ctx.inputs.get("tap22abv", ""),
    ]

    draw_page(c, left, right)


def page12(c, ctx):
    left = [
        ctx.inputs.get("tap23name", "AVAILABLE TAP"),
        ctx.inputs.get("tap23style", ""),
        ctx.inputs.get("tap23abv", ""),
    ]

    right = ["", "", ""]

    draw_page(c, left, right)