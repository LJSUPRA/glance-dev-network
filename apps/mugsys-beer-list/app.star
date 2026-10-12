# Mugsy's Pub and Patio
# GLANCE Scroll Pro - 384 x 32
# 23 taps
# One phone input per tap:
# BEER NAME | STYLE / BREWERY | ABV


def parse_tap(value):
    value = value.strip()

    if value == "" or value.upper() == "AVAILABLE TAP":
        return ["AVAILABLE TAP", "", ""]

    parts = value.split("|")

    name = ""
    style = ""
    abv = ""

    if len(parts) > 0:
        name = parts[0].strip()

    if len(parts) > 1:
        style = parts[1].strip()

    if len(parts) > 2:
        abv = parts[2].strip()

    return [name, style, abv]


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


def draw_beer(c, x0, beer):
    name = beer[0].upper()
    style = beer[1].upper()
    abv = beer[2].upper()

    left_x = x0 + 8
    abv_x = x0 + 182

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

    c.text(
        name,
        left_x,
        10,
        font = "7x12",
        color = "white"
    )

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

    c.rect(
        191,
        9,
        192,
        30,
        fill = "green"
    )

    draw_beer(c, 0, left)

    if right != None:
        draw_beer(c, 192, right)


def page1(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap1",
            "BUD LIGHT | LIGHT LAGER | 4.2%"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap2",
            "MODELO ESPECIAL | MEXICAN LAGER | 4.4%"
        )
    )

    draw_page(c, left, right)


def page2(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap3",
            "CORONA PREMIER | LIGHT LAGER | 4.0%"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap4",
            "MICHELOB ULTRA | LIGHT LAGER | 4.2%"
        )
    )

    draw_page(c, left, right)


def page3(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap5",
            "YUENGLING LAGER | TRADITIONAL LAGER | 4.5%"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap6",
            "MILLER LITE | LIGHT LAGER | 4.2%"
        )
    )

    draw_page(c, left, right)


def page4(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap7",
            "GOOSE ISLAND IPA | IPA | 5.9%"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap8",
            "OH, SURF | LAND-GRANT | TBD"
        )
    )

    draw_page(c, left, right)


def page5(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap9",
            "L.G. MUGSY LIGHT | LAND-GRANT | TBD"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap10",
            "L.G. ALL WELCOME | LAND-GRANT | TBD"
        )
    )

    draw_page(c, left, right)


def page6(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap11",
            "BLUE MOON | BELGIAN WHITE | 5.4%"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap12",
            "GUINNESS | IRISH STOUT | 4.2%"
        )
    )

    draw_page(c, left, right)


def page7(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap13",
            "SUMMER SHANDY | LEINENKUGEL'S | 4.2%"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap14",
            "RHINEGEIST TRUTH | IPA | 7.2%"
        )
    )

    draw_page(c, left, right)


def page8(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap15",
            "CBC IPA | COLUMBUS BREWING | 6.3%"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap16",
            "COORS LIGHT | LIGHT LAGER | 4.2%"
        )
    )

    draw_page(c, left, right)


def page9(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap17",
            "DOWNEAST CIDER | ORIGINAL BLEND | 5.1%"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap18",
            "PACIFICO | MEXICAN LAGER | 4.4%"
        )
    )

    draw_page(c, left, right)


def page10(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap19",
            "AVAILABLE TAP"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap20",
            "AVAILABLE TAP"
        )
    )

    draw_page(c, left, right)


def page11(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap21",
            "AVAILABLE TAP"
        )
    )

    right = parse_tap(
        ctx.inputs.get(
            "tap22",
            "AVAILABLE TAP"
        )
    )

    draw_page(c, left, right)


def page12(c, ctx):
    left = parse_tap(
        ctx.inputs.get(
            "tap23",
            "AVAILABLE TAP"
        )
    )

    right = None

    draw_page(c, left, right)