.PHONY: test dist upload

clean:
	find . -name "*.pyc" |xargs rm || true
	rm -r dist || true
	rm -r build || true
	rm -r *.egg-info || true
	rm -r tiddlywebplugins/tiddlydocs/resources || true

remotes: python_remotes plugin_remotes

python_remotes:
	wget -O tiddlyeditor_plus.py http://svn.tiddlywiki.org/Trunk/contributors/SimonMcManus/tiddlyweb/tiddlydocs/tiddlyeditor_plus.py
	wget -O gadget.py http://svn.tiddlywiki.org/Trunk/contributors/BenGillies/TiddlyDocs/gadget.py
	wget -O room_script.py http://svn.tiddlywiki.org/Trunk/contributors/BenGillies/TiddlyDocs/room_script.py
	wget -O space.py http://github.com/bengillies/TiddlyWeb-Plugins/raw/master/spaces/space.py
	wget -O html_validator.py http://github.com/bengillies/TiddlyWeb-Plugins/raw/master/validators/html_validator.py
	wget -O tiddlywiki_validator.py http://github.com/bengillies/TiddlyWeb-Plugins/raw/master/validators/tiddlywiki_validator.py
	wget -O rtf.py http://svn.tiddlywiki.org/Trunk/contributors/PaulDowney/tiddlyweb/TiddlyWebRTF/rtf/__init__.py

plugin_remotes:
	./cacher

test: remotes

dist: remotes test 
	python setup.py sdist

release: clean pypi

pypi: remotes test
	python setup.py sdist upload
