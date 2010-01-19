"""
local developer configuration
"""

import tiddlywebplugins.devstore
import tiddlywebwiki.instance as instance


config = {
    'server_store': ['tiddlywebplugins.devstore', { 'store_root': 'store' }],
    'local_instance_tiddlers': {
        '...': [
            '...'
        ]
    },
    'log_level': 'DEBUG'
}

instance.instance_config.update(config)

# prevent local tiddlers from being created in the devstore
tiddlywebplugins.devstore.Store.tiddler_put = lambda self, tiddler: None
