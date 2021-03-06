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

from subprocess import check_call
import glob
import os

from cwrap.config import Config, File


GCCXML_INCLUDES = ['./include']


if __name__ == '__main__':
    for f in glob.glob('_*.pxd'):
        os.unlink(f)
    files = glob.glob('./include/git2/*.h')
    files.remove('./include/git2/stdint.h')
    files.remove('./include/git2/inttypes.h')
    config = Config('gccxml', files=[File(n) for n in files],
                    include_dirs=GCCXML_INCLUDES)
    config.generate()
    sed = 's/cdef extern from "[_a-z]\+.h"/cdef extern from "git2.h"/'
    for name in glob.glob('_*.pxd'):
        check_call(['sed', '-i', sed, name])
