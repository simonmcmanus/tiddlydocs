AUTHOR = 'simonmcmanus'
AUTHOR_EMAIL = 'simon@osmosoft.com'
NAME = 'tiddlywebplugins.tiddlydocs'
DESCRIPTION = 'Packaging of Tiddlydocs'
VERSION = '0.12'


import os

from setuptools import setup, find_packages

setup(
    namespace_packages = ['tiddlywebplugins'],
    name = NAME,
    version = VERSION,
    description = DESCRIPTION,
    long_description = open(os.path.join(os.path.dirname(__file__), 'README')).read(),
    author = AUTHOR,
    url = 'http://pypi.python.org/pypi/%s' % NAME,
    packages = find_packages(exclude='test'),
    author_email = AUTHOR_EMAIL,
    platforms = 'Posix; MacOS X; Windows',
    scripts = ['tiddlydocs', 'tiddlydocs_static_files.sh'],
    py_modules = ['tiddlyeditor_plus', 'gadget', 'room_script', 'space', 'rtf',
        'html_validator', 'tiddlywiki_validator'],
    install_requires = ['setuptools',
        'tiddlyweb>=0.9.96',
        'tiddlywebwiki',
        ],
    zip_safe = False,
    include_package_data = True,
    )
