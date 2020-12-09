.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .registers 6

    .line 608
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 610
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/util/TimingsTraceLog;

    move-result-object v0

    .line 613
    nop

    .line 614
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 617
    const/4 v2, 0x0

    const-string v3, "RemoteException during radio shutdown"

    const/4 v4, 0x1

    const-string v5, "ShutdownThread"

    if-eqz v1, :cond_23

    :try_start_18
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_23

    :cond_1f
    move v6, v2

    goto :goto_24

    .line 623
    :catch_21
    move-exception v6

    goto :goto_36

    .line 617
    :cond_23
    :goto_23
    move v6, v4

    .line 618
    :goto_24
    if-nez v6, :cond_3b

    .line 619
    const-string v7, "Turning off cellular radios..."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/ShutdownThread;->access$400(Ljava/lang/String;)V

    .line 621
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_35} :catch_21

    goto :goto_3b

    .line 624
    :goto_36
    invoke-static {v5, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    move v6, v4

    goto :goto_3c

    .line 626
    :cond_3b
    :goto_3b
    nop

    .line 628
    :goto_3c
    const-string v7, "Waiting for Radio..."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 631
    :goto_48
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_b8

    .line 632
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 633
    iget v9, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v10, v9

    sub-long/2addr v10, v7

    long-to-double v7, v10

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v7, v10

    const-wide/high16 v10, 0x4028000000000000L  # 12.0

    mul-double/2addr v7, v10

    int-to-double v9, v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    .line 635
    add-int/lit8 v7, v7, 0x6

    .line 636
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 639
    :cond_6c
    if-nez v6, :cond_9f

    .line 641
    :try_start_6e
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v6
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_72} :catch_74

    .line 645
    xor-int/2addr v6, v4

    goto :goto_79

    .line 642
    :catch_74
    move-exception v6

    .line 643
    invoke-static {v5, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    move v6, v4

    .line 646
    :goto_79
    if-eqz v6, :cond_9f

    .line 647
    const-string v7, "Radio turned off."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/ShutdownThread;->access$800(Ljava/lang/String;)V

    .line 649
    nop

    .line 650
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$900()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v9, "ShutdownRadio"

    invoke-virtual {v0, v9, v7, v8}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 654
    :cond_9f
    if-eqz v6, :cond_ab

    .line 655
    const-string v0, "Radio shutdown complete."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v4, v0, v2

    .line 657
    goto :goto_b8

    .line 659
    :cond_ab
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 660
    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    goto :goto_48

    .line 662
    :cond_b8
    :goto_b8
    return-void
.end method
