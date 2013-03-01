# This code was automatically generated by CWrap version 0.0.0

cdef extern from "repository.h":

    int git_repository_open(git_repository **out, char *path)

    int git_repository_wrap_odb(git_repository **out, git_odb *odb)

    int git_repository_discover(char *path_out, size_t path_size, char *start_path, int across_fs, char *ceiling_dirs)

    cdef enum git_repository_open_flag_t:
        GIT_REPOSITORY_OPEN_NO_SEARCH
        GIT_REPOSITORY_OPEN_CROSS_FS

    int git_repository_open_ext(git_repository **out, char *path, unsigned int flags, char *ceiling_dirs)

    void git_repository_free(git_repository *repo)

    int git_repository_init(git_repository **out, char *path, unsigned int is_bare)

    cdef enum git_repository_init_flag_t:
        GIT_REPOSITORY_INIT_BARE
        GIT_REPOSITORY_INIT_NO_REINIT
        GIT_REPOSITORY_INIT_NO_DOTGIT_DIR
        GIT_REPOSITORY_INIT_MKDIR
        GIT_REPOSITORY_INIT_MKPATH
        GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE

    cdef enum git_repository_init_mode_t:
        GIT_REPOSITORY_INIT_SHARED_UMASK
        GIT_REPOSITORY_INIT_SHARED_GROUP
        GIT_REPOSITORY_INIT_SHARED_ALL

    cdef struct git_repository_init_options:
        unsigned int version
        uint32_t flags
        uint32_t mode
        char *workdir_path
        char *description
        char *template_path
        char *initial_head
        char *origin_url

    int git_repository_init_ext(git_repository **out, char *repo_path, git_repository_init_options *opts)

    int git_repository_head(git_reference **out, git_repository *repo)

    int git_repository_head_detached(git_repository *repo)

    int git_repository_head_orphan(git_repository *repo)

    int git_repository_is_empty(git_repository *repo)

    char *git_repository_path(git_repository *repo)

    char *git_repository_workdir(git_repository *repo)

    int git_repository_set_workdir(git_repository *repo, char *workdir, int update_gitlink)

    int git_repository_is_bare(git_repository *repo)

    int git_repository_config(git_config **out, git_repository *repo)

    void git_repository_set_config(git_repository *repo, git_config *config)

    int git_repository_odb(git_odb **out, git_repository *repo)

    void git_repository_set_odb(git_repository *repo, git_odb *odb)

    int git_repository_index(git_index **out, git_repository *repo)

    void git_repository_set_index(git_repository *repo, git_index *index)

    int git_repository_message(char *out, size_t len, git_repository *repo)

    int git_repository_message_remove(git_repository *repo)

    int git_repository_merge_cleanup(git_repository *repo)

    ctypedef int (*git_repository_fetchhead_foreach_cb)(char *, char *, git_oid *, unsigned int, void *)

    int git_repository_fetchhead_foreach(git_repository *repo, git_repository_fetchhead_foreach_cb callback, void *payload)

    ctypedef int (*git_repository_mergehead_foreach_cb)(git_oid *, void *)

    int git_repository_mergehead_foreach(git_repository *repo, git_repository_mergehead_foreach_cb callback, void *payload)

    int git_repository_hashfile(git_oid *out, git_repository *repo, char *path, git_otype type, char *as_path)

    int git_repository_set_head(git_repository *repo, char *refname)

    int git_repository_set_head_detached(git_repository *repo, git_oid *commitish)

    int git_repository_detach_head(git_repository *repo)

    cdef enum git_repository_state_t:
        GIT_REPOSITORY_STATE_NONE
        GIT_REPOSITORY_STATE_MERGE
        GIT_REPOSITORY_STATE_REVERT
        GIT_REPOSITORY_STATE_CHERRY_PICK
        GIT_REPOSITORY_STATE_BISECT
        GIT_REPOSITORY_STATE_REBASE
        GIT_REPOSITORY_STATE_REBASE_INTERACTIVE
        GIT_REPOSITORY_STATE_REBASE_MERGE
        GIT_REPOSITORY_STATE_APPLY_MAILBOX
        GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE

    int git_repository_state(git_repository *repo)
