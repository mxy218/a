.class Lcom/android/systemui/keyguard/KeyguardViewMediator$7;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5

    .line 1896
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1899
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_146

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_138

    const/16 v1, 0x1f9

    if-eq v0, v1, :cond_132

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_15a

    goto/16 :goto_158

    .line 1979
    :pswitch_15  #0x12
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_158

    .line 1915
    :pswitch_1c  #0x11
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_158

    .line 1935
    :pswitch_23  #0x10
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_158

    :pswitch_2a  #0xf
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNED_ON"

    .line 1930
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1931
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1932
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_158

    :pswitch_39  #0xe
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    .line 1938
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1939
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1940
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_158

    :pswitch_48  #0xd
    const-string p0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    .line 1974
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p0, "KeyguardViewMediator"

    const-string p1, "Timeout while waiting for activity drawn!"

    .line 1975
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_158

    :pswitch_59  #0xc
    const-string v0, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    .line 1967
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1968
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1969
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v0, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v2, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6100(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    .line 1970
    const-class p0, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onSucccessfulUnlock()V

    .line 1971
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_158

    .line 1963
    :pswitch_7b  #0xb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    .line 1964
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->getCallback()Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto/16 :goto_158

    .line 1958
    :pswitch_8e  #0xa
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 1959
    :try_start_91
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1960
    monitor-exit v0

    goto/16 :goto_158

    :catchall_9d
    move-exception p0

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_9d

    throw p0

    :pswitch_a0  #0x9
    const-string v0, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    .line 1953
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1954
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_ad

    move v0, v1

    goto :goto_ae

    :cond_ad
    move v0, v2

    :goto_ae
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_b3

    goto :goto_b4

    :cond_b3
    move v1, v2

    :goto_b4
    invoke-static {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5900(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    .line 1955
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_158

    :pswitch_bc  #0x8
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    .line 1948
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1949
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1950
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_158

    :pswitch_cb  #0x7
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    .line 1943
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1944
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1945
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_158

    :pswitch_da  #0x6
    const-string v0, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNING_ON"

    .line 1921
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1922
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 1923
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->setScreenOn(Z)V

    .line 1924
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionState()V

    .line 1926
    :cond_fb
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1927
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_158

    .line 1918
    :pswitch_108  #0x5
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_158

    :pswitch_10e  #0x4
    const-string p1, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    .line 1910
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1911
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1912
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_158

    .line 1907
    :pswitch_11c  #0x3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_158

    .line 1904
    :pswitch_122  #0x2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_158

    .line 1901
    :pswitch_128  #0x1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_158

    .line 1992
    :cond_132
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    goto :goto_158

    .line 1988
    :cond_138
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1989
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6400(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    goto :goto_158

    :cond_146
    const-string/jumbo p1, "vendor.meizu.sys.cts_state"

    .line 1983
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_158

    .line 1984
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/keyguard/SystemModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/keyguard/SystemModeUtils;->exitGuestMode()V

    :cond_158
    :goto_158
    return-void

    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_128  #00000001
        :pswitch_122  #00000002
        :pswitch_11c  #00000003
        :pswitch_10e  #00000004
        :pswitch_108  #00000005
        :pswitch_da  #00000006
        :pswitch_cb  #00000007
        :pswitch_bc  #00000008
        :pswitch_a0  #00000009
        :pswitch_8e  #0000000a
        :pswitch_7b  #0000000b
        :pswitch_59  #0000000c
        :pswitch_48  #0000000d
        :pswitch_39  #0000000e
        :pswitch_2a  #0000000f
        :pswitch_23  #00000010
        :pswitch_1c  #00000011
        :pswitch_15  #00000012
    .end packed-switch
.end method
