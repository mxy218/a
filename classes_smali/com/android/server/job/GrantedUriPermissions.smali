.class public final Lcom/android/server/job/GrantedUriPermissions;
.super Ljava/lang/Object;
.source "GrantedUriPermissions.java"


# instance fields
.field private final mGrantFlags:I

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mSourceUserId:I

.field private final mTag:Ljava/lang/String;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/IActivityManager;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 45
    iput p2, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    .line 46
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 47
    iput-object p4, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    .line 48
    const-class p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 49
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "job: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    .line 50
    return-void
.end method

.method public static checkGrantFlags(I)Z
    .registers 1

    .line 61
    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static createFromClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 15

    .line 91
    invoke-static {p5}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_8
    const/4 v7, 0x0

    .line 95
    if-eqz p1, :cond_16

    .line 96
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v7

    .line 99
    :cond_16
    return-object v7
.end method

.method public static createFromIntent(Landroid/app/IActivityManager;Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 15

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    .line 68
    invoke-static {v8}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 69
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_c
    const/4 v7, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_1e

    .line 76
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v8

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    move-object v7, v0

    .line 80
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_2e

    .line 82
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v8

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v7

    .line 86
    :cond_2e
    return-object v7
.end method

.method private static grantClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 19

    .line 105
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 106
    const/4 v1, 0x0

    move-object/from16 v9, p7

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 107
    move-object v10, p1

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/android/server/job/GrantedUriPermissions;->grantItem(Landroid/app/IActivityManager;Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v9

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 110
    :cond_1d
    return-object v9
.end method

.method private static grantItem(Landroid/app/IActivityManager;Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 17

    .line 135
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 136
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    move-object v8, v0

    goto :goto_1a

    .line 135
    :cond_18
    move-object/from16 v8, p7

    .line 139
    :goto_1a
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 141
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v8

    .line 144
    :cond_34
    return-object v8
.end method

.method private static grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 18

    .line 117
    nop

    .line 118
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 117
    move-object v1, p1

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    .line 119
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    if-nez p7, :cond_1c

    .line 121
    new-instance v1, Lcom/android/server/job/GrantedUriPermissions;

    move-object v2, p0

    move v3, p2

    move v6, p5

    move-object/from16 v4, p6

    invoke-direct {v1, p0, p5, p2, v4}, Lcom/android/server/job/GrantedUriPermissions;-><init>(Landroid/app/IActivityManager;IILjava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_36

    move-object v9, v1

    goto :goto_20

    .line 120
    :cond_1c
    move v3, p2

    move v6, p5

    move-object/from16 v9, p7

    .line 123
    :goto_20
    :try_start_20
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    move v3, p2

    move-object v4, p3

    move-object v5, v0

    move v6, p5

    move v8, p4

    invoke-interface/range {v1 .. v8}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 125
    iget-object v1, v9, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_34

    .line 128
    goto :goto_40

    .line 126
    :catch_34
    move-exception v0

    goto :goto_39

    :catch_36
    move-exception v0

    move-object/from16 v9, p7

    .line 127
    :goto_39
    const-string v0, "JobScheduler"

    const-string v1, "AM dead"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_40
    return-object v9
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 160
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 162
    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 163
    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 164
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    :goto_31
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 167
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 168
    if-eqz v1, :cond_4f

    .line 169
    const-wide v2, 0x20900000005L

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 166
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 173
    :cond_52
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 174
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGrantFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string v0, " mSourceUserId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTag="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPermissionOwner="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 153
    const/4 v0, 0x0

    :goto_36
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 157
    :cond_5a
    return-void
.end method

.method public revoke(Landroid/app/IActivityManager;)V
    .registers 7

    .line 53
    iget-object p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_8
    if-ltz p1, :cond_26

    .line 54
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    iget v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 54
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 53
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    .line 57
    :cond_26
    iget-object p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 58
    return-void
.end method
