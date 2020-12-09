.class final Lcom/android/server/am/LowMemDetector$LowMemThread;
.super Ljava/lang/Thread;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LowMemDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LowMemThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LowMemDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/am/LowMemDetector;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/LowMemDetector;Lcom/android/server/am/LowMemDetector$1;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->access$100(Lcom/android/server/am/LowMemDetector;)I

    move-result v0

    .line 80
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 82
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/LowMemDetector;->access$202(Lcom/android/server/am/LowMemDetector;Z)Z

    .line 83
    nop

    .line 90
    return-void

    .line 86
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v1}, Lcom/android/server/am/LowMemDetector;->access$300(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_18
    iget-object v2, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v2, v0}, Lcom/android/server/am/LowMemDetector;->access$402(Lcom/android/server/am/LowMemDetector;I)I

    .line 88
    monitor-exit v1

    .line 89
    goto :goto_0

    .line 88
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v0
.end method
