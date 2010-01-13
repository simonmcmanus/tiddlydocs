def init(config):
    import tiddlyeditor_plus
    import gadget
    import room_script
    import html_validator
    import tiddlywiki_validator
    import rtf

    if config['selector']:
        tiddlyeditor_plus.init(config)
        gadget.init(config)
        room_script.init(config)
        html_validator.init(config)
        tiddlywiki_validator.init(config)
        rtf.init(config)
