from tiddlywebplugins.instancer.util import get_tiddler_locations
from tiddlywebwiki.instance import store_contents, store_structure

store_contents['tdocs'] = [
        'http://svn.tiddlywiki.org/Trunk/verticals/tiddlydocs/index.html.recipe',
        ]
store_contents['documents'] = [
        'http://svn.tiddlywiki.org/Trunk/verticals/tiddlydocs/documents/TheInternet/split.recipe',
        ]

store_structure['bags']['tdocs'] = {
        'desc': 'Plugins and friends for tiddlydocs',
        'policy': {
            'read': [],
            'write': ['R:ADMIN'],
            'create': ['R:ADMIN'],
            'delete': ['R:ADMIN'],
            'manage': ['R:ADMIN'],
            'owner': 'administrator',
            }
        }

store_structure['bags']['documents'] = {
        'desc': 'Content for tiddlydocs example',
        'policy': {
            'read': [],
            'write': [],
            'create': [],
            'delete': [],
            'manage': ['R:ADMIN'],
            'accept': ['NONE'],
            'owner': 'administrator',
            }
        }

store_structure['recipes']['tiddlydocs'] = {
        'desc': 'Sample tiddlydocs recipe',
        'recipe': [
            ('system', ''),
            ('tdocs', ''),
            ('documents', ''),
            ],
        }

instance_config = {
        'system_plugins': ['tiddlywebplugins.tiddlydocs'],
        'twanager_plugins': ['tiddlywebwiki'],
        'reserved_bag_names': ['tdocs', 'system'],
        'wikklytext.safe_mode': False,
        'tiddlyeditor_recipe':[
            ['tdocs',''],
            ['system','']
            ],
        }

instance_tiddlers = get_tiddler_locations(store_contents,
        'tiddlywebplugins.tiddlydocs')
