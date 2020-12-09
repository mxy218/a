.class Lcom/android/server/pm/StagingManager$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager$LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/StagingManager$LocalIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/StagingManager$LocalIntentReceiver;)V
    .registers 2

    .line 674
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiver$1;->this$0:Lcom/android/server/pm/StagingManager$LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 680
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiver$1;->this$0:Lcom/android/server/pm/StagingManager$LocalIntentReceiver;

    invoke-static {p1}, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->access$100(Lcom/android/server/pm/StagingManager$LocalIntentReceiver;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    const-wide/16 p3, 0x5

    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_d} :catch_f

    .line 683
    nop

    .line 684
    return-void

    .line 681
    :catch_f
    move-exception p1

    .line 682
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
