.class public Lcom/android/server/uri/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriPermissionOwner$ExternalToken;
    }
.end annotation


# instance fields
.field private externalToken:Landroid/os/Binder;

.field private final mOwner:Ljava/lang/Object;

.field private mReadPerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private mWritePerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 50
    iput-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;
    .registers 2

    .line 61
    instance-of v0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_b

    .line 62
    check-cast p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-virtual {p0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p0

    return-object p0

    .line 64
    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_a

    .line 109
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 111
    :cond_a
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public addWritePermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_a

    .line 116
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_12

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 139
    :cond_12
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_24

    .line 140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "writeUriPermissions="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 142
    :cond_24
    return-void
.end method

.method public getExternalToken()Landroid/os/Binder;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    .line 57
    :cond_b
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 124
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 126
    :cond_10
    return-void
.end method

.method removeUriPermission(Lcom/android/server/uri/GrantUri;I)V
    .registers 7

    .line 76
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_39

    .line 77
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 80
    if-eqz p1, :cond_23

    iget-object v3, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v3}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 81
    :cond_23
    invoke-virtual {v2, p0}, Lcom/android/server/uri/UriPermission;->removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 82
    iget-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v3, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 85
    :cond_2e
    goto :goto_d

    .line 86
    :cond_2f
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 87
    iput-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 90
    :cond_39
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_71

    iget-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz p2, :cond_71

    .line 92
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 93
    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriPermission;

    .line 95
    if-eqz p1, :cond_5b

    iget-object v2, v0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v2}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 96
    :cond_5b
    invoke-virtual {v0, p0}, Lcom/android/server/uri/UriPermission;->removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 97
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v2, v0}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 98
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 100
    :cond_66
    goto :goto_45

    .line 101
    :cond_67
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 102
    iput-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 105
    :cond_71
    return-void
.end method

.method public removeUriPermissions()V
    .registers 2

    .line 68
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions(I)V

    .line 69
    return-void
.end method

.method removeUriPermissions(I)V
    .registers 3

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;I)V

    .line 73
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 131
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 133
    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 145
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 146
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_39

    .line 148
    monitor-enter v0

    .line 149
    :try_start_17
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 150
    iget-object v2, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/uri/GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 151
    goto :goto_1d

    .line 152
    :cond_34
    monitor-exit v0

    goto :goto_39

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_17 .. :try_end_38} :catchall_36

    throw p1

    .line 154
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_60

    .line 155
    monitor-enter v0

    .line 156
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 157
    iget-object v2, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v3, 0x20b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/uri/GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 158
    goto :goto_44

    .line 159
    :cond_5b
    monitor-exit v0

    goto :goto_60

    :catchall_5d
    move-exception p1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_5d

    throw p1

    .line 161
    :cond_60
    :goto_60
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 162
    return-void
.end method
