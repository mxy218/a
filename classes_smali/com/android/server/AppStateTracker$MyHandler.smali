.class Lcom/android/server/AppStateTracker$MyHandler;
.super Landroid/os/Handler;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MSG_ALL_UNWHITELISTED:I = 0x4

.field private static final MSG_ALL_WHITELIST_CHANGED:I = 0x5

.field private static final MSG_EXEMPT_CHANGED:I = 0xa

.field private static final MSG_FORCE_ALL_CHANGED:I = 0x7

.field private static final MSG_FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED:I = 0x9

.field private static final MSG_ON_UID_ACTIVE:I = 0xc

.field private static final MSG_ON_UID_GONE:I = 0xd

.field private static final MSG_ON_UID_IDLE:I = 0xe

.field private static final MSG_ON_UID_STATE_CHANGED:I = 0xb

.field private static final MSG_RUN_ANY_CHANGED:I = 0x3

.field private static final MSG_TEMP_WHITELIST_CHANGED:I = 0x6

.field private static final MSG_UID_ACTIVE_STATE_CHANGED:I = 0x0

.field private static final MSG_UID_FG_STATE_CHANGED:I = 0x1

.field private static final MSG_USER_REMOVED:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTracker;Landroid/os/Looper;)V
    .registers 3

    .line 742
    iput-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    .line 743
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 744
    return-void
.end method

.method private removeUid(IZ)V
    .registers 5

    .line 949
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 950
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 951
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 953
    :cond_1a
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 954
    iget-object p2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    .line 956
    :cond_2d
    monitor-exit v0

    .line 957
    return-void

    .line 956
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p1
.end method


# virtual methods
.method public doUserRemoved(I)V
    .registers 4

    .line 789
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 790
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 810
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17b

    .line 817
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 818
    :try_start_d
    iget-object v2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mStarted:Z

    if-nez v2, :cond_15

    .line 819
    monitor-exit v0

    return-void

    .line 821
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_178

    .line 822
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    .line 824
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    .line 825
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_184

    .line 915
    :pswitch_27  #0x2
    return-void

    .line 912
    :pswitch_28  #0xe
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v5, v6

    :goto_30
    invoke-virtual {p0, v0, v5}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidIdle(IZ)V

    .line 913
    return-void

    .line 909
    :pswitch_34  #0xd
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v5, v6

    :goto_3c
    invoke-virtual {p0, v0, v5}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidGone(IZ)V

    .line 910
    return-void

    .line 906
    :pswitch_40  #0xc
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidActive(I)V

    .line 907
    return-void

    .line 903
    :pswitch_46  #0xb
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidStateChanged(II)V

    .line 904
    return-void

    .line 869
    :pswitch_4e  #0xa
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object p1

    array-length v1, p1

    :goto_55
    if-ge v6, v1, :cond_5f

    aget-object v4, p1, v6

    .line 870
    invoke-static {v4, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1600(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 869
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 872
    :cond_5f
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 873
    return-void

    .line 885
    :pswitch_6a  #0x9
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 886
    :try_start_71
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean p1, p1, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-nez p1, :cond_7e

    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean p1, p1, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    if-nez p1, :cond_7e

    goto :goto_7f

    :cond_7e
    move v5, v6

    .line 887
    :goto_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_a0

    .line 888
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_87
    if-ge v6, v0, :cond_96

    aget-object v4, p1, v6

    .line 889
    invoke-virtual {v4}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    .line 890
    if-eqz v5, :cond_93

    .line 891
    invoke-virtual {v4}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    .line 888
    :cond_93
    add-int/lit8 v6, v6, 0x1

    goto :goto_87

    .line 894
    :cond_96
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 896
    return-void

    .line 887
    :catchall_a0
    move-exception p1

    :try_start_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw p1

    .line 899
    :pswitch_a3  #0x8
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->handleUserRemoved(I)V

    .line 900
    return-void

    .line 876
    :pswitch_ab  #0x7
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object p1

    array-length v1, p1

    :goto_b2
    if-ge v6, v1, :cond_bc

    aget-object v4, p1, v6

    .line 877
    invoke-static {v4, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1700(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 876
    add-int/lit8 v6, v6, 0x1

    goto :goto_b2

    .line 879
    :cond_bc
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 880
    return-void

    .line 862
    :pswitch_c7  #0x6
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object p1

    array-length v1, p1

    :goto_ce
    if-ge v6, v1, :cond_d8

    aget-object v4, p1, v6

    .line 863
    invoke-static {v4, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1500(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 862
    add-int/lit8 v6, v6, 0x1

    goto :goto_ce

    .line 865
    :cond_d8
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 866
    return-void

    .line 855
    :pswitch_e3  #0x5
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object p1

    array-length v1, p1

    :goto_ea
    if-ge v6, v1, :cond_f4

    aget-object v4, p1, v6

    .line 856
    invoke-static {v4, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1400(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 855
    add-int/lit8 v6, v6, 0x1

    goto :goto_ea

    .line 858
    :cond_f4
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 859
    return-void

    .line 848
    :pswitch_ff  #0x4
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object p1

    array-length v1, p1

    :goto_106
    if-ge v6, v1, :cond_110

    aget-object v4, p1, v6

    .line 849
    invoke-static {v4, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1300(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 848
    add-int/lit8 v6, v6, 0x1

    goto :goto_106

    .line 851
    :cond_110
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 852
    return-void

    .line 841
    :pswitch_11b  #0x3
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_122
    if-ge v6, v4, :cond_132

    aget-object v5, v1, v6

    .line 842
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v0, v7, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1200(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;ILjava/lang/String;)V

    .line 841
    add-int/lit8 v6, v6, 0x1

    goto :goto_122

    .line 844
    :cond_132
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 845
    return-void

    .line 834
    :pswitch_13d  #0x1
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    move v5, v6

    :goto_145
    if-ge v5, v4, :cond_151

    aget-object v7, v1, v5

    .line 835
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1100(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V

    .line 834
    add-int/lit8 v5, v5, 0x1

    goto :goto_145

    .line 837
    :cond_151
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object p1

    invoke-virtual {p1, v6, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 838
    return-void

    .line 827
    :pswitch_15b  #0x0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_162
    if-ge v6, v4, :cond_16e

    aget-object v7, v1, v6

    .line 828
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1000(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V

    .line 827
    add-int/lit8 v6, v6, 0x1

    goto :goto_162

    .line 830
    :cond_16e
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object p1

    invoke-virtual {p1, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 831
    return-void

    .line 821
    :catchall_178
    move-exception p1

    :try_start_179
    monitor-exit v0
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    throw p1

    .line 812
    :cond_17b
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->handleUserRemoved(I)V

    .line 813
    return-void

    nop

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_15b  #00000000
        :pswitch_13d  #00000001
        :pswitch_27  #00000002
        :pswitch_11b  #00000003
        :pswitch_ff  #00000004
        :pswitch_e3  #00000005
        :pswitch_c7  #00000006
        :pswitch_ab  #00000007
        :pswitch_a3  #00000008
        :pswitch_6a  #00000009
        :pswitch_4e  #0000000a
        :pswitch_46  #0000000b
        :pswitch_40  #0000000c
        :pswitch_34  #0000000d
        :pswitch_28  #0000000e
    .end packed-switch
.end method

.method public handleUidActive(I)V
    .registers 4

    .line 932
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 933
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTracker;->access$1900(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 934
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 936
    :cond_1a
    monitor-exit v0

    .line 937
    return-void

    .line 936
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public handleUidGone(IZ)V
    .registers 3

    .line 940
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->removeUid(IZ)V

    .line 941
    return-void
.end method

.method public handleUidIdle(IZ)V
    .registers 3

    .line 945
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->removeUid(IZ)V

    .line 946
    return-void
.end method

.method public handleUidStateChanged(II)V
    .registers 5

    .line 918
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 919
    const/4 v1, 0x7

    if-le p2, v1, :cond_1f

    .line 920
    :try_start_a
    iget-object p2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object p2, p2, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 921
    iget-object p2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    goto :goto_32

    .line 924
    :cond_1f
    iget-object p2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object p2, p2, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-static {p2, p1}, Lcom/android/server/AppStateTracker;->access$1900(Landroid/util/SparseBooleanArray;I)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 925
    iget-object p2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    .line 928
    :cond_32
    :goto_32
    monitor-exit v0

    .line 929
    return-void

    .line 928
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_34

    throw p1
.end method

.method public notifyAllUnwhitelisted()V
    .registers 2

    .line 759
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    return-void
.end method

.method public notifyAllWhitelistChanged()V
    .registers 2

    .line 764
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 765
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 766
    return-void
.end method

.method public notifyExemptChanged()V
    .registers 2

    .line 784
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 786
    return-void
.end method

.method public notifyForceAllAppsStandbyChanged()V
    .registers 2

    .line 774
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 775
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 776
    return-void
.end method

.method public notifyForcedAppStandbyFeatureFlagChanged()V
    .registers 2

    .line 779
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 780
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 781
    return-void
.end method

.method public notifyRunAnyAppOpsChanged(ILjava/lang/String;)V
    .registers 5

    .line 755
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 756
    return-void
.end method

.method public notifyTempWhitelistChanged()V
    .registers 2

    .line 769
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 770
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 771
    return-void
.end method

.method public notifyUidActiveStateChanged(I)V
    .registers 3

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 748
    return-void
.end method

.method public notifyUidForegroundStateChanged(I)V
    .registers 4

    .line 751
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 752
    return-void
.end method

.method public onUidActive(I)V
    .registers 4

    .line 797
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 798
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    .line 801
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 802
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4

    .line 805
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 806
    return-void
.end method

.method public onUidStateChanged(II)V
    .registers 4

    .line 793
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 794
    return-void
.end method
