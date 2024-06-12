;;; howm-lang-ko.el --- Wiki-like note-taking tool
;;; Copyright (C) 2005-2023
;;;   HIRAOKA Kazuyuki <kakkokakko@gmail.com>
;;;
;;; This program is free software; you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 1, or (at your option)
;;; any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; The GNU General Public License is available by anonymouse ftp from
;;; prep.ai.mit.edu in pub/gnu/COPYING.  Alternately, you can write to
;;; the Free Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139,
;;; USA.
;;--------------------------------------------------------------------

(require 'howm-common)

(defvar howm-day-of-week-ko '("일" "월" "화" "수" "목" "금" "토"))

(defvar howm-menu-command-table-ko
  `(
    ("[기억]" howm-remember previous)
    ("[새 메모]" (lambda () (howm-create ,howm-menu-action-arg)))
    ("[추가]" (lambda () (howm-create-here ,howm-menu-action-arg)))
    ("[복제]" howm-dup)
    ("[업데이트]" howm-initialize-buffer previous)
    ("[정규표현식]" howm-list-grep)
    ("[문자열]" howm-list-grep-fixed)
    ("[로마자]" howm-list-migemo)
    ("[오늘]" howm-find-today)
    ("[어제]" howm-find-yesterday)
    ("[전체]" howm-list-all)
    ("[최근]" howm-list-recent)
    ("[주변]" howm-list-around)
    ("[일정]" howm-list-schedule)
    ("[Occur]" (lambda () (call-interactively 'howm-occur)) previous)
    ("[버퍼]" (lambda () (howm-list-buffers ,howm-menu-action-arg)))
    ("[마크 ]" howm-list-mark-ring previous)
    ("[기록]" howm-history)
    ("[제목↑]" howm-keyword-to-kill-ring)
    ("[이름↑]" (lambda () (howm-keyword-to-kill-ring t)))
    ("[키워드↓]" howm-insert-keyword previous)
    ("[날짜↓]" howm-insert-date previous)
    ("[시간↓]" howm-insert-dtime previous)
    ("[할일]" howm-list-todo)
    ("[모두 닫기]" howm-kill-all)
    ("[강제 모두 닫기]" (lambda () (interactive) (howm-kill-all t)))
    ("[메뉴 편집]" howm-menu-edit current)
    ("[메뉴 업데이트]" howm-menu-refresh current)
    ("[설정]" (lambda () (customize-group 'howm)))
    ("[랜덤]" howm-random-walk previous)
    ))

(provide 'howm-lang-ko)

;;; howm-lang-ko.el ends here
