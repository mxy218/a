.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field final synthetic val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .registers 3

    .line 1449
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1452
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1453
    :try_start_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1454
    monitor-exit v0

    .line 1455
    return-void

    .line 1454
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method