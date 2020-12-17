.class public Lcom/meizu/server/FlymePermissionDialogReqQueue;
.super Ljava/lang/Object;
.source "FlymePermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/meizu/server/FlymePermissionDialog;

.field private final mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue;->mDialog:Lcom/meizu/server/FlymePermissionDialog;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue;->mResultList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/meizu/server/FlymePermissionDialog;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue;->mDialog:Lcom/meizu/server/FlymePermissionDialog;

    return-object v0
.end method

.method public notifyAll(I)V
    .registers 5
    .param p1, "mode"  # I

    .line 33
    monitor-enter p0

    .line 34
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 35
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue;->mResultList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;

    .line 36
    .local v0, "res":Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;
    invoke-virtual {v0, p1}, Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;->set(I)V

    .line 37
    iget-object v2, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue;->mResultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    nop

    .end local v0  # "res":Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;
    goto :goto_1

    .line 39
    :cond_1c
    monitor-exit p0

    .line 40
    return-void

    .line 39
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public register(Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;)V
    .registers 3
    .param p1, "res"  # Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;

    .line 27
    monitor-enter p0

    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue;->mResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 29
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setDialog(Lcom/meizu/server/FlymePermissionDialog;)V
    .registers 2
    .param p1, "mDialog"  # Lcom/meizu/server/FlymePermissionDialog;

    .line 18
    iput-object p1, p0, Lcom/meizu/server/FlymePermissionDialogReqQueue;->mDialog:Lcom/meizu/server/FlymePermissionDialog;

    .line 19
    return-void
.end method
