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

from _checkout cimport git_checkout_opts

from _indexer cimport git_transfer_progress_callback

from _transport cimport \
    git_cred_acquire_cb, \
    git_transport

from _types cimport \
    git_remote_callbacks, \
    git_repository

from _remote cimport git_remote_autotag_option_t


cdef extern from "git2.h":

    cdef struct git_clone_options:
        unsigned int version
        git_checkout_opts checkout_opts
        int bare
        git_transfer_progress_callback fetch_progress_cb
        void *fetch_progress_payload
        char *remote_name
        char *pushurl
        char *fetch_spec
        char *push_spec
        git_cred_acquire_cb cred_acquire_cb
        void *cred_acquire_payload
        git_transport *transport
        git_remote_callbacks *remote_callbacks
        git_remote_autotag_option_t remote_autotag
        char *checkout_branch

    ctypedef git_clone_options git_clone_options

    int git_clone(git_repository **out, char *url, char *local_path, git_clone_options *options)