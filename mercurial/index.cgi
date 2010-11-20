#!/usr/bin/env python

# Path to repo or hgweb config to serve (see 'hg help hgweb')
config = "/opt/mercurial/repo/hgweb.config"

from mercurial.hgweb.hgweb_mod import hgweb
from mercurial.hgweb.hgwebdir_mod import hgwebdir

from mercurial import demandimport; demandimport.enable()
from mercurial.hgweb import hgweb, wsgicgi
#application = hgwebdir("/opt/mercurial/repo/hgweb.config")
application = hgwebdir(config)
wsgicgi.launch(application)
#application.run()

