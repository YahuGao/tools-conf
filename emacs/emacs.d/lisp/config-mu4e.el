;; example configuration for mu4e

;; make sure mu4e is in your load-path
(require 'mu4e)

;; use mu4e for e-mail in emacs
(setq mail-user-agent 'mu4e-user-agent)

;; these must start with a "/", and must exist
;; (i.e.. /home/user/Maildir/sent must exist)
;; you use e.g. 'mu mkdir' to make the Maildirs if they don't
;; already exist

;; below are the defaults; if they do not exist yet, mu4e offers to
;; create them. they can also functions; see their docstrings.
;; (setq mu4e-sent-folder   "/sent")
;; (setq mu4e-drafts-folder "/drafts")
;; (setq mu4e-trash-folder  "/trash")

;; smtp mail setting; these are the same that `gnus' uses.
(setq
   message-send-mail-function   'smtpmail-send-it
   smtpmail-default-smtp-server "prod-webmail.windriver.com"
   smtpmail-local-domain        "windriver.com")

(setq user-full-name "Gao Yahu")
(setq user-mail-address "yahu.gao@windriver.com")
(setq send-mail-function 'smtpmail-send-it)
(setq smtpmail-smtp-server "prod-webmail.windriver.com")

(with-eval-after-load 'mu4e-alert
  ;; Enable Desktop notifications
  (mu4e-alert-set-default-style 'notifier)) ; For linux

;;; Set up some common mu4e variables
(setq mu4e-maildir "~/mails"
      mu4e-trash-folder "/已删除"
      mu4e-refile-folder "/Archive"
      mu4e-sent-folder "/已发送"
      mu4e-drafts-folder "/草稿箱"
      ;; sync email from imap server
      mu4e-get-mail-command "offlineimap"
      mu4e-update-interval 300
      mu4e-compose-signature-auto-include nil
      mu4e-view-show-images t
      mu4e-view-show-addresses t)

(provide 'config-mu4e)
