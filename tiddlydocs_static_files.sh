mkdir static 
cd static 
mkdir ckeditor 
wget -O ckeditor_3.0.tar.gz http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.0/ckeditor_3.0.tar.gz
tar xvf ckeditor_3.0.tar.gz
rm ckeditor_3.0.tar.gz
 
svn co http://svn.tiddlywiki.org/Trunk/contributors/SimonMcManus/tiddlyweb/tiddlydocs/static/mypage_images/ mydocs_images
svn co http://svn.tiddlywiki.org/Trunk/contributors/SimonMcManus/tiddlyweb/tiddlydocs/static/mypage_css/ mypage_css
