mkdir static
cd static
mkdir ckeditor
wget -O ckeditor_3.2.tar.gz http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.2/ckeditor_3.2.tar.gz
tar xvf ckeditor_3.2.tar.gz
rm ckeditor_3.2.tar.gz
cd ckeditor/plugins
svn co http://svn.tiddlywiki.org/Trunk/contributors/SimonMcManus/tiddlyweb/CKEditor/tw_uploader/
cd ../../
svn co http://svn.tiddlywiki.org/Trunk/contributors/SimonMcManus/tiddlyweb/tiddlydocs/static/mypage_images/ mydocs_images
svn co http://svn.tiddlywiki.org/Trunk/contributors/SimonMcManus/tiddlyweb/tiddlydocs/static/mypage_css/ mypage_css

