.class final Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
.super Landroid/os/Handler;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayModeDirectorHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"  # Landroid/os/Looper;

    .line 390
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 391
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 395
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_d

    .line 397
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/DisplayModeDirector$Listener;

    .line 398
    .local v0, "listener":Lcom/android/server/display/DisplayModeDirector$Listener;
    invoke-interface {v0}, Lcom/android/server/display/DisplayModeDirector$Listener;->onAllowedDisplayModesChanged()V

    .line 401
    .end local v0  # "listener":Lcom/android/server/display/DisplayModeDirector$Listener;
    :goto_d
    return-void
.end method
