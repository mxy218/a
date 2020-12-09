.class Lcom/android/server/wm/WallpaperVisibilityListeners;
.super Ljava/lang/Object;
.source "WallpaperVisibilityListeners.java"


# instance fields
.field private final mDisplayListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IWallpaperVisibilityListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 58
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result p1

    .line 59
    iget-object v1, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 63
    if-nez v1, :cond_15

    .line 64
    return-void

    .line 67
    :cond_15
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 68
    :goto_19
    if-lez v2, :cond_29

    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 70
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IWallpaperVisibilityListener;

    .line 72
    :try_start_23
    invoke-interface {v3, p1, v0}, Landroid/view/IWallpaperVisibilityListener;->onWallpaperVisibilityChanged(ZI)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    .line 75
    goto :goto_28

    .line 73
    :catch_27
    move-exception v3

    .line 76
    :goto_28
    goto :goto_19

    .line 77
    :cond_29
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 78
    return-void
.end method

.method registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 39
    if-nez v0, :cond_14

    .line 40
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 43
    :cond_14
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 44
    return-void
.end method

.method unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RemoteCallbackList;

    .line 50
    if-nez p2, :cond_b

    .line 51
    return-void

    .line 53
    :cond_b
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 54
    return-void
.end method
