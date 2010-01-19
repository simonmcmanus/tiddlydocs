from tiddlywebplugins.instancer.util import get_tiddler_locations

from tiddlywebplugins.tiddlydocs.instance import store_contents


PACKAGE_NAME = "tiddlywebplugins.tiddlydocs" # TODO: DRY; import from setup.py?


config = {
    'instance_tiddlers': get_tiddler_locations(store_contents, PACKAGE_NAME)
}
