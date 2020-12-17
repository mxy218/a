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
    .param p1, "this$0"  # Lcom/android/server/power/ShutdownThread;

    .line 643
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 645
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/util/TimingsTraceLog;

    move-result-object v0

    .line 648
    .local v0, "shutdownTimingsTraceLog":Landroid/util/TimingsTraceLog;
    nop

    .line 649
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 652
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
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

    .line 658
    :catch_21
    move-exception v6

    goto :goto_36

    .line 652
    :cond_23
    :goto_23
    move v6, v4

    .line 653
    .local v6, "radioOff":Z
    :goto_24
    if-nez v6, :cond_3b

    .line 654
    const-string v7, "Turning off cellular radios..."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/ShutdownThread;->access$400(Ljava/lang/String;)V

    .line 656
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_35} :catch_21

    goto :goto_3b

    .line 659
    .local v6, "ex":Landroid/os/RemoteException;
    :goto_36
    invoke-static {v5, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    const/4 v6, 0x1

    .local v6, "radioOff":Z
    goto :goto_3c

    .line 661
    :cond_3b
    :goto_3b
    nop

    .line 663
    :goto_3c
    const-string v7, "Waiting for Radio..."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 666
    .local v7, "delay":J
    :goto_48
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_ba

    .line 667
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 668
    iget v9, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v10, v9

    sub-long/2addr v10, v7

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4028000000000000L  # 12.0

    mul-double/2addr v10, v12

    int-to-double v12, v9

    div-double/2addr v10, v12

    double-to-int v9, v10

    .line 670
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    .line 671
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 674
    .end local v9  # "status":I
    :cond_6c
    if-nez v6, :cond_a0

    .line 676
    :try_start_6e
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v9
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_72} :catch_75

    xor-int/2addr v9, v4

    move v6, v9

    .line 680
    goto :goto_7a

    .line 677
    :catch_75
    move-exception v9

    .line 678
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-static {v5, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    const/4 v6, 0x1

    .line 681
    .end local v9  # "ex":Landroid/os/RemoteException;
    :goto_7a
    if-eqz v6, :cond_a0

    .line 682
    const-string v9, "Radio turned off."

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/power/ShutdownThread;->access$800(Ljava/lang/String;)V

    .line 684
    nop

    .line 685
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$900()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v11, "ShutdownRadio"

    invoke-virtual {v0, v11, v9, v10}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 689
    :cond_a0
    if-eqz v6, :cond_ac

    .line 690
    const-string v3, "Radio shutdown complete."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v4, v3, v2

    .line 692
    goto :goto_ba

    .line 694
    :cond_ac
    const-wide/16 v9, 0x64

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 695
    iget-wide v9, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v7, v9, v11

    goto :goto_48

    .line 697
    :cond_ba
    :goto_ba
    return-void
.end method
