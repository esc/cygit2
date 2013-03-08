# This code was automatically generated by CWrap version 0.0.0

from libc.stdint cimport int64_t, intmax_t, uintmax_t
from libc.stddef cimport wchar_t

cdef extern from "git2.h":

    ctypedef int64_t git_off_t

    ctypedef int64_t git_time_t

    cdef enum __git_otype:
        GIT_OBJ_ANY
        GIT_OBJ_BAD
        GIT_OBJ__EXT1
        GIT_OBJ_COMMIT
        GIT_OBJ_TREE
        GIT_OBJ_BLOB
        GIT_OBJ_TAG
        GIT_OBJ__EXT2
        GIT_OBJ_OFS_DELTA
        GIT_OBJ_REF_DELTA

    ctypedef __git_otype git_otype

    ctypedef git_odb git_odb

    cdef struct git_odb:
        pass

    ctypedef git_odb_backend git_odb_backend

    cdef struct git_odb_backend:
        pass

    ctypedef git_odb_object git_odb_object

    cdef struct git_odb_object:
        pass

    ctypedef git_odb_stream git_odb_stream

    cdef struct git_odb_stream:
        pass

    ctypedef git_odb_writepack git_odb_writepack

    cdef struct git_odb_writepack:
        pass

    ctypedef git_refdb git_refdb

    cdef struct git_refdb:
        pass

    ctypedef git_refdb_backend git_refdb_backend

    cdef struct git_refdb_backend:
        pass

    ctypedef git_repository git_repository

    cdef struct git_repository:
        pass

    ctypedef git_object git_object

    cdef struct git_object:
        pass

    ctypedef git_revwalk git_revwalk

    cdef struct git_revwalk:
        pass

    ctypedef git_tag git_tag

    cdef struct git_tag:
        pass

    ctypedef git_blob git_blob

    cdef struct git_blob:
        pass

    ctypedef git_commit git_commit

    cdef struct git_commit:
        pass

    ctypedef git_tree_entry git_tree_entry

    cdef struct git_tree_entry:
        pass

    ctypedef git_tree git_tree

    cdef struct git_tree:
        pass

    ctypedef git_treebuilder git_treebuilder

    cdef struct git_treebuilder:
        pass

    ctypedef git_index git_index

    cdef struct git_index:
        pass

    ctypedef git_config git_config

    cdef struct git_config:
        pass

    ctypedef git_config_backend git_config_backend

    cdef struct git_config_backend:
        pass

    ctypedef git_reflog_entry git_reflog_entry

    ctypedef git_reflog_entry const_git_reflog_entry "const git_reflog_entry"

    cdef struct git_reflog_entry:
        pass

    ctypedef git_reflog git_reflog

    cdef struct git_reflog:
        pass

    ctypedef git_note git_note

    cdef struct git_note:
        pass

    ctypedef git_packbuilder git_packbuilder

    cdef struct git_packbuilder:
        pass

    cdef struct git_time:
        git_time_t time
        int offset

    ctypedef git_time git_time

    cdef struct git_signature:
        char *name
        char *email
        git_time when

    ctypedef git_signature git_signature

    ctypedef git_signature const_git_signature "const git_signature"

    ctypedef git_reference git_reference

    cdef struct git_reference:
        pass

    cdef enum git_ref_t:
        GIT_REF_INVALID
        GIT_REF_OID
        GIT_REF_SYMBOLIC
        GIT_REF_LISTALL

    cdef enum git_branch_t:
        GIT_BRANCH_LOCAL
        GIT_BRANCH_REMOTE

    cdef enum git_filemode_t:
        GIT_FILEMODE_NEW
        GIT_FILEMODE_TREE
        GIT_FILEMODE_BLOB
        GIT_FILEMODE_BLOB_EXECUTABLE
        GIT_FILEMODE_LINK
        GIT_FILEMODE_COMMIT

    ctypedef git_refspec git_refspec

    cdef struct git_refspec:
        pass

    ctypedef git_remote git_remote

    cdef struct git_remote:
        pass

    ctypedef git_push git_push

    cdef struct git_push:
        pass

    ctypedef git_remote_head git_remote_head

    cdef struct git_remote_head:
        pass

    ctypedef git_remote_callbacks git_remote_callbacks

    cdef struct git_remote_callbacks:
        pass

    cdef struct imaxdiv_t:
        long int quot
        long int rem

    intmax_t imaxabs(intmax_t __n)

    imaxdiv_t imaxdiv(intmax_t __numer, intmax_t __denom)

    long int __strtol_internal(char *__nptr, char **__endptr, int __base, int __group)

    intmax_t strtoimax(char *nptr, char **endptr, int base)

    long unsigned int __strtoul_internal(char *__nptr, char **__endptr, int __base, int __group)

    uintmax_t strtoumax(char *nptr, char **endptr, int base)

    long int __wcstol_internal(wchar_t *__nptr, wchar_t **__endptr, int __base, int __group)

    intmax_t wcstoimax(wchar_t *nptr, wchar_t **endptr, int base)

    long unsigned int __wcstoul_internal(wchar_t *__nptr, wchar_t **__endptr, int __base, int __group)

    uintmax_t wcstoumax(wchar_t *nptr, wchar_t **endptr, int base)

    ctypedef unsigned char __u_char

    ctypedef short unsigned int __u_short

    ctypedef unsigned int __u_int

    ctypedef long unsigned int __u_long

    ctypedef signed char __int8_t

    ctypedef unsigned char __uint8_t

    ctypedef short int __int16_t

    ctypedef short unsigned int __uint16_t

    ctypedef int __int32_t

    ctypedef unsigned int __uint32_t

    ctypedef long int __int64_t

    ctypedef long unsigned int __uint64_t

    ctypedef long int __quad_t

    ctypedef long unsigned int __u_quad_t

    ctypedef long unsigned int __dev_t

    ctypedef unsigned int __uid_t

    ctypedef unsigned int __gid_t

    ctypedef long unsigned int __ino_t

    ctypedef long unsigned int __ino64_t

    ctypedef unsigned int __mode_t

    ctypedef long unsigned int __nlink_t

    ctypedef long int __off_t

    ctypedef long int __off64_t

    ctypedef int __pid_t

    cdef struct __fsid_t:
        int __val[2]

    ctypedef long int __clock_t

    ctypedef long unsigned int __rlim_t

    ctypedef long unsigned int __rlim64_t

    ctypedef unsigned int __id_t

    ctypedef long int __time_t

    ctypedef unsigned int __useconds_t

    ctypedef long int __suseconds_t

    ctypedef int __daddr_t

    ctypedef long int __swblk_t

    ctypedef int __key_t

    ctypedef int __clockid_t

    ctypedef void *__timer_t

    ctypedef long int __blksize_t

    ctypedef long int __blkcnt_t

    ctypedef long int __blkcnt64_t

    ctypedef long unsigned int __fsblkcnt_t

    ctypedef long unsigned int __fsblkcnt64_t

    ctypedef long unsigned int __fsfilcnt_t

    ctypedef long unsigned int __fsfilcnt64_t

    ctypedef long int __ssize_t

    ctypedef __off64_t __loff_t

    ctypedef __quad_t *__qaddr_t

    ctypedef char *__caddr_t

    ctypedef long int __intptr_t

    ctypedef unsigned int __socklen_t

    ctypedef __u_char u_char

    ctypedef __u_short u_short

    ctypedef __u_int u_int

    ctypedef __u_long u_long

    ctypedef __quad_t quad_t

    ctypedef __u_quad_t u_quad_t

    ctypedef __fsid_t fsid_t

    ctypedef __loff_t loff_t

    ctypedef __ino_t ino_t

    ctypedef __ino64_t ino64_t

    ctypedef __dev_t dev_t

    ctypedef __gid_t gid_t

    ctypedef __mode_t mode_t

    ctypedef __nlink_t nlink_t

    ctypedef __uid_t uid_t

    ctypedef __off_t off_t

    ctypedef __off64_t off64_t

    ctypedef __id_t id_t

    ctypedef __ssize_t ssize_t

    ctypedef __daddr_t daddr_t

    ctypedef __caddr_t caddr_t

    ctypedef __key_t key_t

    ctypedef __useconds_t useconds_t

    ctypedef __suseconds_t suseconds_t

    ctypedef long unsigned int ulong

    ctypedef short unsigned int ushort

    ctypedef unsigned int uint

    ctypedef signed char int8_t

    ctypedef short int int16_t

    ctypedef int int32_t

    ctypedef long int int64_t

    ctypedef unsigned char u_int8_t

    ctypedef short unsigned int u_int16_t

    ctypedef unsigned int u_int32_t

    ctypedef long unsigned int u_int64_t

    ctypedef long int register_t

    ctypedef __blksize_t blksize_t

    ctypedef __blkcnt_t blkcnt_t

    ctypedef __fsblkcnt_t fsblkcnt_t

    ctypedef __fsfilcnt_t fsfilcnt_t

    ctypedef __blkcnt64_t blkcnt64_t

    ctypedef __fsblkcnt64_t fsblkcnt64_t

    ctypedef __fsfilcnt64_t fsfilcnt64_t
