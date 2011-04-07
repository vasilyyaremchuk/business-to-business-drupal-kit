; This file describes the core project requirements for BuildKit 7.x. Several
; patches against Drupal core and their associated issue numbers have been
; included here for reference.
;
; Use this file to build a full distro including Drupal core (with patches) and
; the BuildKit install profile using the following command:
;
;     $ drush make distro.make [directory]

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.0"

; Make system directories configurable to allow tests in profiles/[name]/modules to be run.
; http://drupal.org/node/911354
projects[drupal][patch][911354] = http://drupal.org/files/issues/911354.43.patch

; Missing drupal_alter() for text formats and filters
; http://drupal.org/node/903730
projects[drupal][patch][903730] = http://drupal.org/files/issues/drupal.filter-alter.82.patch

; Use vocabulary machine name for permissions
; http://drupal.org/node/995156
projects[drupal][patch][995156] = http://drupal.org/files/issues/995156-5_portable_taxonomy_permissions.patch

;projects[buildkit][type] = profile
;projects[buildkit][download][type] = git
;projects[buildkit][download][url] = http://git.drupal.org/project/buildkit.git
;projects[buildkit][download][tag] = 7.x-2.0-beta2

; Start profile
projects[start][type] = "profile"
;projects[start][download][type] = "get"
;projects[start][download][url] = "http://drupal-distributions.org/start.tar.gz"
;projects[start][directory_name] = "start"
projects[start][download][type] = "git"
projects[start][download][url] = "git://github.com/vasilyyaremchuk/Start-Kit-of-Drupal-7-for-the-easy-development.git"
projects[start][directory_name] = "start"


;projects[l10n_install][type] = "profile"

;Devel
projects[backup_migrate][subdir] = "contrib"
projects[masquerade][subdir] = "contrib"
projects[migrate][subdir] = "contrib"
projects[node_convert][subdir] = "contrib"

;SEO
projects[addthis][subdir] = "contrib"
projects[addthis][type] = "module"
projects[addthis][download][type] = "git"
projects[addthis][download][url] = "http://git.drupal.org/project/addthis.git"
projects[addthis][download][branch] = "7.x-2.x"
projects[addtoany][subdir] = "contrib"
projects[globalredirect][subdir] = "contrib"
projects[google_analytics][subdir] = "contrib"
;projects[nodewords][subdir] = "contrib"
projects[page_title][subdir] = "contrib"
projects[token][subdir] = "contrib"
projects[pathauto][subdir] = "contrib"
projects[pathologic][subdir] = "contrib"
projects[xmlsitemap][subdir] = "contrib"
;projects[metatags_quick][subdir] = "contrib"
;projects[opengraph_meta][subdir] = "contrib"

;E-commerce
projects[commerce][subdir] = "contrib"

;Mail
projects[mailing_list][subdir] = "contrib"


;Media
projects[media][subdir] = "contrib"
projects[media][download][type] = "git"
projects[media][download][url] = "http://git.drupal.org/project/media.git"
projects[media][download][branch] = "7.x-1.x"
projects[media_browser_plus][subdir] = "contrib"
projects[media_browser_plus][version] = "1.0-beta2"
projects[media_youtube][subdir] = "contrib"
projects[rotating_banner][subdir] = "contrib"
projects[rotating_banner][version] = "1.x-dev"

;UI
projects[colortheme][subdir] = "contrib"
projects[htmlpurifier][subdir] = "contrib"
projects[search_api][subdir] = "contrib"
projects[libraries][subdir] = "contrib"
projects[styles][subdir] = "contrib"
projects[webform][subdir] = "contrib"
projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = "2.0"
;projects[wysiwyg][type] = "module"
;projects[wysiwyg][download][type] = "get"
;projects[wysiwyg][download][url] = "http://ftp.drupal.org/files/projects/wysiwyg-7.x-2.0.tar.gz"

;Libraries
libraries[htmlpurifier][download][type] = "get"
libraries[htmlpurifier][download][url] = "http://htmlpurifier.org/releases/htmlpurifier-4.3.0.tar.gz"
libraries[htmlpurifier][directory_name] = "htmlpurifier"
;libraries[htmlpurifier][destination] = "./libraries"
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.5.2/ckeditor_3.5.2.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
;libraries[ckeditor][destination] = "./libraries"
libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "http://colorpowered.com/colorbox/latest"
libraries[colorbox][directory_name] = "colorbox"


;AntiSPAM
projects[mollom][subdir] = "contrib"

;Themes
projects[sky][type] = "theme"
projects[zen][type] = "theme"

; From Buildkit profile (http://drupal.org/project/buildkit)

; Modules =====================================================================

projects[admin][subdir] = contrib
projects[admin][version] = 2.0-beta3

projects[context][subdir] = contrib
projects[context][version] = 3.0-beta1

projects[ctools][subdir] = contrib
projects[ctools][version] = 1.0-alpha2

projects[devel][subdir] = contrib
projects[devel][version] = 1.0

projects[diff][subdir] = contrib
projects[diff][version] = 2.0-beta2

projects[features][subdir] = contrib
projects[features][version] = 1.0-beta1

projects[openidadmin][subdir] = contrib
projects[openidadmin][version] = 1.0

projects[strongarm][subdir] = contrib
projects[strongarm][version] = 2.0-beta2

projects[views][subdir] = contrib
projects[views][version] = 3.0-alpha1

; Themes ======================================================================

projects[tao][version] = 3.0-beta3
projects[rubik][version] = 4.0-beta4