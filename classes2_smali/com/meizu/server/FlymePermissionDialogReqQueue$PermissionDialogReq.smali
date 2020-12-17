.class public final Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;
.super Ljava/lang/Object;
.source "FlymePermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FlymePermissionDialogReqQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionDialogReq"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionDialogReq"


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public get()I
    .registers 4

    .line 57
    monitor-enter p0

    .line 58
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_13

    .line 60
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_17

    .line 63
    goto :goto_1

    .line 61
    :catch_9
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "PermissionDialogReq"

    const-string v2, "permission wait end. "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    nop

    .end local v0  # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 65
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_17

    .line 66
    iget v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    return v0

    .line 65
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public set(I)V
    .registers 3
    .param p1, "res"  # I

    .line 49
    monitor-enter p0

    .line 50
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    .line 51
    iput p1, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 53
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method
