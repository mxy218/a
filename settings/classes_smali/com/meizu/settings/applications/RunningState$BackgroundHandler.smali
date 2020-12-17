.class final Lcom/meizu/settings/applications/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/RunningState;Landroid/os/Looper;)V
    .registers 3

    .line 236
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    .line 237
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_70

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    goto :goto_75

    .line 261
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v0

    .line 262
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 263
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object v2, v2, Lcom/meizu/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2, v1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->scaleIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 264
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_75

    .line 265
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 266
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_75

    .line 247
    :cond_36
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 248
    :try_start_3b
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-boolean v0, v0, Lcom/meizu/settings/applications/RunningState;->mResumed:Z

    if-nez v0, :cond_43

    .line 249
    monitor-exit p1

    return-void

    .line 251
    :cond_43
    monitor-exit p1
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_6d

    .line 252
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/meizu/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    invoke-static {v0, v2, v3}, Lcom/meizu/settings/applications/RunningState;->access$100(Lcom/meizu/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 254
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    .line 257
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_75

    :catchall_6d
    move-exception p0

    .line 251
    :try_start_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0

    .line 244
    :cond_70
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/RunningState;

    invoke-static {p0}, Lcom/meizu/settings/applications/RunningState;->access$000(Lcom/meizu/settings/applications/RunningState;)V

    :cond_75
    :goto_75
    return-void
.end method
