.class Lcom/android/server/AnyMotionDetector$4;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/AnyMotionDetector;

    .line 360
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->access$000(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 364
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$600(Lcom/android/server/AnyMotionDetector;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 365
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/AnyMotionDetector;->access$602(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 366
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v1}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 368
    :cond_1b
    monitor-exit v0

    .line 369
    return-void

    .line 368
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method
