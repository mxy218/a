.class Lcom/android/server/NativeDaemonConnector$1;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NativeDaemonConnector;->waitForCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NativeDaemonConnector;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/NativeDaemonConnector;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/NativeDaemonConnector;

    .line 368
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector$1;->this$0:Lcom/android/server/NativeDaemonConnector;

    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 372
    return-void
.end method
