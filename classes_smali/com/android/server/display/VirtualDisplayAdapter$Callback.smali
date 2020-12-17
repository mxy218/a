.class Lcom/android/server/display/VirtualDisplayAdapter$Callback;
.super Landroid/os/Handler;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# static fields
.field private static final MSG_ON_DISPLAY_PAUSED:I = 0x0

.field private static final MSG_ON_DISPLAY_RESUMED:I = 0x1

.field private static final MSG_ON_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V
    .registers 4
    .param p1, "callback"  # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 413
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 414
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 415
    return-void
.end method


# virtual methods
.method public dispatchDisplayPaused()V
    .registers 2

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 438
    return-void
.end method

.method public dispatchDisplayResumed()V
    .registers 2

    .line 441
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 442
    return-void
.end method

.method public dispatchDisplayStopped()V
    .registers 2

    .line 445
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 446
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 420
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_1d

    .line 428
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v0}, Landroid/hardware/display/IVirtualDisplayCallback;->onStopped()V

    goto :goto_1d

    .line 425
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v0}, Landroid/hardware/display/IVirtualDisplayCallback;->onResumed()V

    .line 426
    goto :goto_1d

    .line 422
    :cond_17
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v0}, Landroid/hardware/display/IVirtualDisplayCallback;->onPaused()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1e

    .line 423
    nop

    .line 433
    :goto_1d
    goto :goto_26

    .line 431
    :catch_1e
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VirtualDisplayAdapter"

    const-string v2, "Failed to notify listener of virtual display event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method
