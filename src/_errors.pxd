# -*- coding: utf-8 -*-
#
# Copyright 2013 The cygit2 contributors
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License, version 2,
# as published by the Free Software Foundation.
#
# In addition to the permissions in the GNU General Public License,
# the authors give you unlimited permission to link the compiled
# version of this file into combinations with other programs,
# and to distribute those combinations without any restriction
# coming from the use of this file.  (The General Public License
# restrictions do apply in other respects; for example, they cover
# modification of the file, and distribution when not linked into
# a combined executable.)
#
# This file is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING.  If not, write to
# the Free Software Foundation, 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301, USA.

# This code was automatically generated by CWrap version 0.0.0

cdef extern from "git2.h":

    cdef enum:
        GIT_OK
        GIT_ERROR
        GIT_ENOTFOUND
        GIT_EEXISTS
        GIT_EAMBIGUOUS
        GIT_EBUFS
        GIT_EUSER
        GIT_EBAREREPO
        GIT_EORPHANEDHEAD
        GIT_EUNMERGED
        GIT_ENONFASTFORWARD
        GIT_EINVALIDSPEC
        GIT_EMERGECONFLICT
        GIT_PASSTHROUGH
        GIT_ITEROVER

    cdef struct git_error:
        char *message
        int klass

    ctypedef git_error const_git_error "const git_error"

    cdef enum git_error_t:
        GITERR_NOMEMORY
        GITERR_OS
        GITERR_INVALID
        GITERR_REFERENCE
        GITERR_ZLIB
        GITERR_REPOSITORY
        GITERR_CONFIG
        GITERR_REGEX
        GITERR_ODB
        GITERR_INDEX
        GITERR_OBJECT
        GITERR_NET
        GITERR_TAG
        GITERR_TREE
        GITERR_INDEXER
        GITERR_SSL
        GITERR_SUBMODULE
        GITERR_THREAD
        GITERR_STASH
        GITERR_CHECKOUT
        GITERR_FETCHHEAD
        GITERR_MERGE

    git_error *giterr_last()

    void giterr_clear()

    void giterr_set_str(int error_class, char *string)

    void giterr_set_oom()
