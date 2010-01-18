.PHONY: test dist upload

clean:
	
	find . -name "*.pyc" |xargs rm || true
	rm -Rf dist || true
	rm -Rf build || true
	rm -Rf *.egg-info || true
	rm -Rf tiddlywebplugins/tiddlydocs/resources || true

	rm -Rf tiddlyeditor_plus.py
	rm -Rf gadget.py
	rm -Rf room_script.py
	rm -Rf space.py 
	rm -Rf html_validator.py 
	rm -Rf tiddlywiki_validator.py
	rm -Rf rtf.py
	

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
