.class Lcom/android/server/wm/DragAndDropPermissionsHandler;
.super Lcom/android/internal/view/IDragAndDropPermissions$Stub;
.source "DragAndDropPermissionsHandler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private mActivityToken:Landroid/os/IBinder;

.field private final mMode:I

.field private mPermissionOwnerToken:Landroid/os/IBinder;

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private mTransientToken:Landroid/os/IBinder;

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
.method constructor <init>(Landroid/content/ClipData;ILjava/lang/String;III)V
    .registers 8

    .line 50
    invoke-direct {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 46
    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 47
    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    .line 51
    iput p2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    .line 52
    iput-object p3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    .line 54
    iput p5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    .line 55
    iput p6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    .line 57
    iget-object p2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 58
    return-void
.end method

.method private doTake(Landroid/os/IBinder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 77
    const/4 v2, 0x0

    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 78
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v4

    iget v6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    iget-object v7, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/net/Uri;

    iget v9, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    iget v10, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    iget v11, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    .line 78
    move-object v5, p1

    invoke-interface/range {v4 .. v11}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_30

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 83
    :cond_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    nop

    .line 85
    return-void

    .line 83
    :catchall_30
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 136
    goto :goto_5

    .line 134
    :catch_4
    move-exception v0

    .line 137
    :goto_5
    return-void
.end method

.method public release()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    .line 103
    return-void

    .line 106
    :cond_9
    nop

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 109
    :try_start_10
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 110
    invoke-interface {v0, v3}, Landroid/app/IActivityTaskManager;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_22
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    .line 115
    iput-object v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 116
    nop

    .line 115
    goto :goto_31

    :catchall_1e
    move-exception v0

    iput-object v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    throw v0

    .line 111
    :catch_22
    move-exception v0

    .line 115
    iput-object v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 113
    return-void

    .line 118
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 119
    iput-object v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 120
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    invoke-interface {v3, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    iput-object v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    .line 124
    :goto_31
    const-class v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 125
    nop

    :goto_3a
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_54

    .line 126
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget v4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    iget v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 128
    :cond_54
    return-void
.end method

.method public take(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    goto :goto_19

    .line 65
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 68
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 69
    invoke-interface {p1, v0}, Landroid/app/IActivityTaskManager;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    .line 72
    return-void

    .line 63
    :cond_19
    :goto_19
    return-void
.end method

.method public takeTransient(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    goto :goto_27

    .line 92
    :cond_9
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 93
    const-string v1, "drop"

    invoke-interface {v0, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    .line 95
    iget-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 97
    iget-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    .line 98
    return-void

    .line 90
    :cond_27
    :goto_27
    return-void
.end method
