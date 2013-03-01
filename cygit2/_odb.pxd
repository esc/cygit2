# This code was automatically generated by CWrap version 0.0.0

cdef extern from "odb.h":

    int git_odb_new(git_odb **out)

    int git_odb_open(git_odb **out, char *objects_dir)

    int git_odb_add_backend(git_odb *odb, git_odb_backend *backend, int priority)

    int git_odb_add_alternate(git_odb *odb, git_odb_backend *backend, int priority)

    int git_odb_add_disk_alternate(git_odb *odb, char *path)

    void git_odb_free(git_odb *db)

    int git_odb_read(git_odb_object **out, git_odb *db, git_oid *id)

    int git_odb_read_prefix(git_odb_object **out, git_odb *db, git_oid *short_id, size_t len)

    int git_odb_read_header(size_t *len_out, git_otype *type_out, git_odb *db, git_oid *id)

    int git_odb_exists(git_odb *db, git_oid *id)

    int git_odb_refresh(git_odb *db)

    int git_odb_foreach(git_odb *db, git_odb_foreach_cb cb, void *payload)

    int git_odb_write(git_oid *out, git_odb *odb, void *data, size_t len, git_otype type)

    int git_odb_open_wstream(git_odb_stream **out, git_odb *db, size_t size, git_otype type)

    int git_odb_open_rstream(git_odb_stream **out, git_odb *db, git_oid *oid)

    int git_odb_write_pack(git_odb_writepack **out, git_odb *db, git_transfer_progress_callback progress_cb, void *progress_payload)

    int git_odb_hash(git_oid *out, void *data, size_t len, git_otype type)

    int git_odb_hashfile(git_oid *out, char *path, git_otype type)

    void git_odb_object_free(git_odb_object *object)

    git_oid *git_odb_object_id(git_odb_object *object)

    void *git_odb_object_data(git_odb_object *object)

    size_t git_odb_object_size(git_odb_object *object)

    git_otype git_odb_object_type(git_odb_object *object)
