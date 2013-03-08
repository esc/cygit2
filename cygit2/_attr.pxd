# This code was automatically generated by CWrap version 0.0.0

cdef extern from "git2.h":

    cdef enum git_attr_t:
        GIT_ATTR_UNSPECIFIED_T
        GIT_ATTR_TRUE_T
        GIT_ATTR_FALSE_T
        GIT_ATTR_VALUE_T

    git_attr_t git_attr_value(char *attr)

    int git_attr_get(char **value_out, git_repository *repo, uint32_t flags, char *path, char *name)

    int git_attr_get_many(char **values_out, git_repository *repo, uint32_t flags, char *path, size_t num_attr, char **names)

    ctypedef int (*git_attr_foreach_cb)(char *, char *, void *)

    int git_attr_foreach(git_repository *repo, uint32_t flags, char *path, git_attr_foreach_cb callback, void *payload)

    void git_attr_cache_flush(git_repository *repo)

    int git_attr_add_macro(git_repository *repo, char *name, char *values)