.class final Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientStopCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionCallback;


# direct methods
.method public constructor <init>(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 2

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 683
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionCallback;->onStop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 691
    goto :goto_e

    .line 689
    :catch_6
    move-exception v0

    .line 690
    const-string v1, "MediaProjectionManagerService"

    const-string v2, "Failed to notify media projection has stopped"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    :goto_e
    return-void
.end method
