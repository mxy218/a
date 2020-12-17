.class public abstract Lcom/meizu/settings/applications/AppStateBaseBridge;
.super Ljava/lang/Object;
.source "AppStateBaseBridge.java"

# interfaces
.implements Lcom/meizu/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;,
        Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;,
        Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;
    }
.end annotation


# instance fields
.field protected final mAppSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

.field protected final mAppState:Lcom/meizu/settings/applications/ApplicationsState;

.field protected final mCallback:Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;

.field protected final mHandler:Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;

.field protected final mMainHandler:Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mAppState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 22
    iget-object p1, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mAppState:Lcom/meizu/settings/applications/ApplicationsState;

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0}, Lcom/meizu/settings/applications/ApplicationsState;->newSession(Lcom/meizu/settings/applications/ApplicationsState$Callbacks;)Lcom/meizu/settings/applications/ApplicationsState$Session;

    move-result-object p1

    goto :goto_10

    :cond_f
    move-object p1, v0

    :goto_10
    iput-object p1, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    .line 23
    iput-object p2, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mCallback:Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;

    .line 27
    new-instance p1, Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;

    iget-object p2, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mAppState:Lcom/meizu/settings/applications/ApplicationsState;

    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Lcom/meizu/settings/applications/ApplicationsState;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_23

    .line 28
    :cond_1f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_23
    invoke-direct {p1, p0, p2}, Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;-><init>(Lcom/meizu/settings/applications/AppStateBaseBridge;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mHandler:Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;

    .line 29
    new-instance p1, Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/meizu/settings/applications/AppStateBaseBridge;Lcom/meizu/settings/applications/AppStateBaseBridge$1;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/meizu/settings/applications/AppStateBaseBridge$MainHandler;

    return-void
.end method


# virtual methods
.method protected abstract loadAllExtraInfo()V
.end method

.method public onAllSizesComputed()V
    .registers 1

    return-void
.end method

.method public onLauncherInfoChanged()V
    .registers 1

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mHandler:Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageIconChanged()V
    .registers 1

    return-void
.end method

.method public onPackageListChanged()V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mHandler:Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPackageIconDone(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V
    .registers 2

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public pause()V
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->pause()V

    return-void
.end method

.method public release()V
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->release()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mHandler:Lcom/meizu/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->resume()V

    return-void
.end method

.method protected abstract updateExtraInfo(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
.end method
