.class Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;
.super Landroid/os/Handler;
.source "NewNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NewNetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NewNetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/os/Looper;)V
    .registers 3

    .line 261
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    .line 262
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 263
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_13

    .line 271
    :cond_c
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->access$300(Lcom/android/server/NewNetworkTimeUpdateService;I)V

    .line 274
    :goto_13
    return-void
.end method
