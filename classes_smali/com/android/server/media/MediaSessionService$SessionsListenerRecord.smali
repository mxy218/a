.class final Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionsListenerRecord"
.end annotation


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final listener:Landroid/media/session/IActiveSessionsListener;

.field public final pid:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;

.field public final uid:I

.field public final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    .registers 7
    .param p1, "this$0"  # Lcom/android/server/media/MediaSessionService;
    .param p2, "listener"  # Landroid/media/session/IActiveSessionsListener;
    .param p3, "componentName"  # Landroid/content/ComponentName;
    .param p4, "userId"  # I
    .param p5, "pid"  # I
    .param p6, "uid"  # I

    .line 950
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    .line 952
    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    .line 953
    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    .line 954
    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->pid:I

    .line 955
    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->uid:I

    .line 956
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 960
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 961
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 962
    monitor-exit v0

    .line 963
    return-void

    .line 962
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
