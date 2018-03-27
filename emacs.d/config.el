
(use-package elfeed
  :ensure t
  ;; :bind (:map elfeed-search-mode-map
  ;;             ("A" . bjm/elfeed-show-all)
  ;;             ("E" . bjm/elfeed-show-emacs)
  ;;             ("D" . bjm/elfeed-show-daily)
  ;;             ("q" . bjm/elfeed-save-db-and-bury))
)

(defun ga/play-with-mpv (start end)
"Play the link in the region with mpv"
(interactive "r")
(shell-command (concat "mpv " (buffer-substring start end) "\&")))

(define-key elfeed-show-mode-map (kbd "C-c o") 'ga/play-with-mpv)

(setq elfeed-feeds
  '("http://blog.martinfenner.org/rss.xml"
    "http://jonreeve.com/feed.xml"
    "http://programminghistorian.org/feed.xml"
    "http://saulalbert.net/feed/"
    "http://www.docear.org/feed/"
    "http://sonal.hypotheses.org/feed"
    "http://literaturegeek.com/atom.xml"
    "http://wcm1.web.rice.edu/feed.xml"
    "http://spatialrecology.org/feed.xml"
    "http://mph.puddingbowl.org/feed/"
    "http://mydesiringmachines.wordpress.com/feed/"
    "http://visualmethodculture.wordpress.com/feed/"
    "http://progressivegeographies.com/feed/"
    "http://fucklemonde.blogspot.com/feeds/posts/default"
    "http://sexgeek.wordpress.com/feed/"
    "https://replikradicale.wordpress.com/feed/"
    "http://radicalbi.wordpress.com/feed/"
    "http://jgieseking.org/feed/"
    "http://www.tandfonline.com/action/showFeed?ui=0&mi=jcsb0l&ai=15j&jc=rvst20&type=etoc&feed=rss"
    "http://www.tandfonline.com/action/showFeed?ui=0&mi=dxxykw&ai=wo&jc=gide20&type=etoc&feed=rss"
    "http://redtac.org/possibles/feed/"
    "http://www.tandfonline.com/action/showFeed?ui=0&mi=lppxwi&ai=1c8&jc=wgls20&type=etoc&feed=rss"
    "http://onlinelibrary.wiley.com/rss/journal/10.1111/(ISSN)1541-0064"
    "http://onlinelibrary.wiley.com/rss/journal/10.1111/(ISSN)1548-744X"
    "http://www.tandfonline.com/action/showFeed?ui=0&mi=ej1ex6&ai=1a22g&jc=rprn20&type=etoc&feed=rss"
    "http://www.jssj.org/feed/?post_type=jssj-article"
    "http://rss.sciencedirect.com/publication/science/17554586"
    "http://onlinelibrary.wiley.com/rss/journal/10.1111/(ISSN)1540-6040"
    "http://link.springer.com/search.rss?facet-content-type=Article&facet-journal-id=10508&channel-name=Archives+of+Sexual+Behavior"
    "http://www.tandfonline.com/action/showFeed?ui=0&mi=gugiih&ai=v4&jc=csos20&type=etoc&feed=rss"
    "http://www.tandfonline.com/action/showFeed?ui=0&mi=dxxykw&ai=2il&jc=rscg20&type=etoc&feed=rss"
    "http://www.tandfonline.com/action/showFeed?ui=0&mi=dxxykw&ai=1cy&jc=wjhm20&type=etoc&feed=rs"
    "http://journals.sagepub.com/action/showFeed?ui=0&mi=ehikzz&ai=2b4&jc=usja&type=etoc&feed=rss"
    "http://www.tandfonline.com/action/showFeed?ui=0&mi=eyhqfg&ai=1qz&jc=rmob20&type=etoc&feed=rss"
    "http://journals.sagepub.com/action/showFeed?ui=0&mi=ehikzz&ai=2b4&jc=cgjb&type=etoc&feed=rss"
    "http://glq.dukejournals.org/rss_feeds/current.xml"
    "http://onlinelibrary.wiley.com/rss/journal/10.1111/(ISSN)1467-8330"
    "http://onlinelibrary.wiley.com/rss/journal/10.1111/(ISSN)1475-4762"
    "http://socialtext.dukejournals.org/rss_feeds/current.xml"
    "http://www.tandfonline.com/action/showFeed?ui=0&mi=dxxykw&ai=2g1&jc=cgpc20&type=etoc&feed=rss"
    "http://jeanneemard.wordpress.com/feed/"
    "https://jacobinmag.com/feed/"
    "http://willchernoff.com/feed/"
    "http://anarchism.pageabode.com/rss.xml"
    "http://beauvoirpapineau.blogspot.com/feeds/posts/default"
    "http://libcom.org/rss.xml"
    "http://www.anarchogeekreview.com/feed"
    "http://psychologic-anarchist.com/feed/"
    "http://nicolasphebus.tumblr.com/rss"
    "http://www.lapointelibertaire.org/node/feed"
    "http://flegmatique.net/feed/"
    "http://moutonmarron.blogspot.com/feeds/posts/default"
    "http://www.chronicle.com/blogs/profhacker/feed"
    "https://kieranhealy.org/index.xml\"Furry\""
    "http://furscience.com/feed/"
    "http://www.adjectivespecies.com/feed/"
    "http://lovesexfur.com/feed/"
    "http://www.furwhatitsworth.com/?feed=podcast"
    "https://www.flayrah.com/rss.xml"
    "https://furrywritersguild.com/rss.xml"
    "https://ricochet.media/fr/fil"
    "http://feeds.feedburner.com/d0od"
    "http://feeds2.feedburner.com/webupd8"
    "https://www.archlinux.org/feeds/news/"
    "https://www.neomutt.org/feed.xml"
    "https://zedshaw.com/feed/"
    "http://francoisestereo.com/feed/"
    "https://voir.ca/mickael-bergeron/feed/"
    "https://voir.ca/chanceuxqueteux/feed/"
    "https://voir.ca/jean-felix-chenier/feed/"
    "https://voir.ca/pierre-luc-senecal/feed/"
    "https://voir.ca/cherchernoise/feed/"
    "https://voir.ca/pierre-yves-mcsween/feed/"
    "http://www.journaldemontreal.com/blogues/iris/rss.xml"
    "http://www.journaldemontreal.com/blogues/leo-paul-lauzon/rss.xml"
    "http://www.journaldemontreal.com/blogues/catherine-dorion/rss.xml"
    "http://www.journaldemontreal.com/blogues/josee-legault/rss.xml"
    "http://geekographie.maieul.net/spip.php?page=backend"
    "http://lunduke.com/feed/"
    "http://feeds.feedburner.com/FreedomPenguin"
    "https://www.youtube.com/feeds/videos.xml?user=gotbletu"
    "https://www.youtube.com/feeds/videos.xml?user=AwakenWithJP"
    "https://www.youtube.com/feeds/videos.xml?user=ChrisWereDigital"
    "https://www.youtube.com/feeds/videos.xml?user=BrianLunduke"
    "https://www.youtube.com/feeds/videos.xml?user=JamesNintendoNerd"
    "https://www.youtube.com/feeds/videos.xml?user=ICARUSLIV3S"
    "https://www.youtube.com/feeds/videos.xml?user=phreakindee"
    "https://www.youtube.com/feeds/videos.xml?user=SGtMarkIV"
    "https://www.youtube.com/feeds/videos.xml?user=BadEditPro"
    "https://www.youtube.com/feeds/videos.xml?user=JtheLinuxguy"
    "https://www.youtube.com/feeds/videos.xml?user=connermcd"
    "https://www.youtube.com/feeds/videos.xml?user=kaihendrai"
    "https://www.youtube.com/feeds/videos.xml?user=criticalears2012"
    "https://www.youtube.com/feeds/videos.xml?user=Kurzgesagt"
    "https://www.youtube.com/feeds/videos.xml?user=DNewsChannel"
    "https://www.youtube.com/feeds/videos.xml?user=scishow"
    "https://www.youtube.com/feeds/videos.xml?user=scishowspace"
    "https://www.youtube.com/feeds/videos.xml?user=sexplanations"
    "https://www.youtube.com/feeds/videos.xml?user=BlackoutMusicNL"
    "https://www.youtube.com/feeds/videos.xml?user=theneedledrop"
    "https://www.youtube.com/feeds/videos.xml?user=PailinsKitchen"
    "https://www.youtube.com/feeds/videos.xml?user=voxdotcom"
    "https://www.youtube.com/feeds/videos.xml?user=FitOnRaw"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UCbJrj3osfxL-U1ZtQ58EH5Q"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UC3VWbWk8qDBiF0741izgpQg"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UC2eYFnH61tmytImy1mTYvhA"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UCXPHFM88IlFn68OmLwtPmZA"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UCcQsDUZiK1GWDcP7BpVO_kw"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UCCSHWqosFfYJY5v2WqbTLhg"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UC7_gcs09iThXybpVgjHZ_7g"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UCUdettijNYvLAm4AixZv4RA"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UCn8V3KNSgDr1Dai77_y8JrQ"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UCyFUj2oLZ1xkjK4sSUab-jA"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UCi4uPLyx-LRhniBOLo-36bQ"
    "https://www.youtube.com/feeds/videos.xml?channel_id=UCvA_wgsX6eFAOXI8Rbg_WiQ"
    "https://viedelicorne.blog/feed/"
    "https://xaviercamus.com/feed/"
    "http://nullprogram.com/feed/"
    "http://planet.emacsen.org/atom.xml"))

(set-face-attribute 'variable-pitch (selected-frame) :font (font-spec :family "DejaVuSans" :size 16))

(use-package helm
  :ensure t
  :diminish helm-mode
  :init
  (progn
    (require 'helm-config)
    (setq helm-candidate-number-limit 100)
    ;; From https://gist.github.com/antifuchs/9238468
    (setq helm-idle-delay 0.0 ; update fast sources immediately (doesn't).
          helm-input-idle-delay 0.01  ; this actually updates things
                                        ; reeeelatively quickly.
          helm-yas-display-key-on-candidate t
          helm-quick-update t
          helm-M-x-requires-pattern nil
          helm-ff-skip-boring-files t)
    (helm-mode))
  :bind (("C-c h" . helm-mini)
         ("C-h a" . helm-apropos)
         ("C-x C-b" . helm-buffers-list)
         ("C-x b" . helm-buffers-list)
         ("M-y" . helm-show-kill-ring)
         ("M-x" . helm-M-x)
         ("C-x c o" . helm-occur)
         ("C-x c s" . helm-swoop)
         ("C-x c y" . helm-yas-complete)
         ("C-x c Y" . helm-yas-create-snippet-on-region)
         ("C-x c b" . helm-do-grep-book-notes)
         ("C-x c SPC" . helm-all-mark-rings)))
(ido-mode -1) ;; Turn off ido mode in case I enabled it accidentally

(use-package helm-descbinds
  :ensure t
  :defer t
  :bind (("C-h b" . helm-descbinds)
         ("C-h w" . helm-descbinds)))

(use-package helm-swoop
  :ensure t
  :bind
 (("C-S-s" . helm-swoop)
  ("M-i" . helm-swoop)
  ("M-s s" . helm-swoop)
  ("M-s M-s" . helm-swoop)
  ("M-I" . helm-swoop-back-to-last-point)
  ("C-c M-i" . helm-multi-swoop)
  ("C-x M-i" . helm-multi-swoop-all)
  )
 :config
 (progn
   (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
   (define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop))
 (setq
  helm-mode-fuzzy-match t
  helm-completion-in-region-fuzzy-match t)
)

(setq inhibit-startup-message t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq ring-bell-function 'ignore)

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(when window-system (global-hl-line-mode t))

(when window-system (global-prettify-symbols-mode t))

(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
    (setq spaceline-buffer-encoding-abbrev-p nil)
    (setq spaceline-line-column-p nil)
    (setq spaceline-line-p nil)
    (setq powerline-default-separator (quote arrow))
    (spaceline-spacemacs-theme))

(line-number-mode 1)
(column-number-mode 1)

(setq display-time-24hr-format t)
(setq display-time-format "%H:%M - %d %B %Y")

(display-time-mode 1)

(setq scroll-conservatively 100)

(use-package which-key
  :ensure t
  :config
    (which-key-mode))

(use-package beacon
  :ensure t
  :config
    (beacon-mode 1))

(setq make-backup-files nil)
(setq auto-save-default nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(use-package emms
  :ensure t
  :config
    (require 'emms-setup)
    (require 'emms-player-mpd)
    (emms-all)
    (setq emms-seek-seconds 5)
    (setq emms-player-list '(emms-player-mpd))
    (setq emms-info-functions '(emms-info-mpd))
    (setq emms-player-mpd-server-name "localhost")
    (setq emms-player-mpd-server-port "6600")
  :bind
    ("s-m p" . emms)
    ("s-m b" . emms-smart-browse)
    ("s-m r" . emms-player-mpd-update-all-reset-cache)
    ("<XF86AudioPrev>" . emms-previous)
    ("<XF86AudioNext>" . emms-next)
    ("<XF86AudioPlay>" . emms-pause)
    ("<XF86AudioStop>" . emms-stop))

(setq mpc-host "localhost:6601")

(use-package mingus
  :ensure t)

(defun mpd/start-music-daemon ()
  "Start MPD, connects to it and syncs the metadata cache."
  (interactive)
  (shell-command "mpd")
  (mpd/update-database)
  (emms-player-mpd-connect)
  (emms-cache-set-from-mpd-all)
  (message "MPD Started!"))
(global-set-key (kbd "s-m c") 'mpd/start-music-daemon)

(defun mpd/kill-music-daemon ()
  "Stops playback and kill the music daemon."
  (interactive)
  (emms-stop)
  (call-process "killall" nil nil nil "mpd")
  (message "MPD Killed!"))
(global-set-key (kbd "s-m k") 'mpd/kill-music-daemon)

(defun mpd/update-database ()
  "Updates the MPD database synchronously."
  (interactive)
  (call-process "mpc" nil nil nil "update")
  (message "MPD Database Updated!"))
(global-set-key (kbd "s-m u") 'mpd/update-database)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))

(defvar my-term-shell "/bin/zsh")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)
