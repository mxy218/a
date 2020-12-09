.class final Lcom/android/server/media/MediaSessionService$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_SESSIONS_CHANGED:I = 0x1

.field private static final MSG_VOLUME_INITIAL_DOWN:I = 0x2


# instance fields
.field private final mIntegerCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 2

    .line 2236
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2239
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 2243
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_46

    .line 2248
    :cond_9
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2249
    :try_start_10
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 2250
    if-eqz p1, :cond_33

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 2251
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 2253
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 2255
    :cond_33
    monitor-exit v0

    goto :goto_46

    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_35

    throw p1

    .line 2245
    :cond_38
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->access$5600(Lcom/android/server/media/MediaSessionService;I)V

    .line 2246
    nop

    .line 2258
    :goto_46
    return-void
.end method

.method public postSessionsChanged(I)V
    .registers 4

    .line 2262
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2263
    if-nez v0, :cond_13

    .line 2264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2265
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2267
    :cond_13
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2268
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2269
    return-void
.end method
