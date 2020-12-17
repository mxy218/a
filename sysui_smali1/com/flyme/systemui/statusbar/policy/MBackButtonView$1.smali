.class Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;
.super Landroid/os/Handler;
.source "MBackButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/MBackButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x193

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_a4

    goto/16 :goto_a3

    .line 136
    :pswitch_c  #0xa
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$800(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V

    goto/16 :goto_a3

    .line 122
    :pswitch_13  #0x9
    :try_start_13
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 124
    invoke-interface {p1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    goto :goto_39

    .line 126
    :cond_21
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$600(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 127
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$200(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2e} :catch_2f

    goto :goto_39

    :catch_2f
    move-exception p1

    .line 131
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to reach activity manager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :cond_39
    :goto_39
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p0, v3}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$702(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;Z)Z

    goto :goto_a3

    .line 116
    :pswitch_3f  #0x8
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v1, p0, v4, v5}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->sendEvent(IIIJ)V

    .line 117
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sendEvent: ACTION_FINGERPRINT_UP"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :pswitch_52  #0x7
    const/16 p0, 0x40

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v4, v1, p0, v2, v3}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->sendEvent(IIIJ)V

    .line 113
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sendEvent: ACTION_FINGERPRINT_DOWN"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 109
    :pswitch_65  #0x6
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$500(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V

    goto :goto_a3

    .line 106
    :pswitch_6b  #0x5
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$400(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V

    goto :goto_a3

    .line 102
    :pswitch_71  #0x4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-static {v3, v2, v4, p0, p1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->sendEvent(IIIJ)V

    .line 103
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sendEvent: ACTION_BACK_UP"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 98
    :pswitch_82  #0x3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-static {v4, v2, v4, p0, p1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->sendEvent(IIIJ)V

    .line 99
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sendEvent: ACTION_BACK_DOWN"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 95
    :pswitch_93  #0x1, 0x2
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$200(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V

    goto :goto_a3

    .line 90
    :pswitch_99  #0x0
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$000(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V

    .line 91
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p0, v4}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$102(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;I)I

    :goto_a3
    return-void

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_99  #00000000
        :pswitch_93  #00000001
        :pswitch_93  #00000002
        :pswitch_82  #00000003
        :pswitch_71  #00000004
        :pswitch_6b  #00000005
        :pswitch_65  #00000006
        :pswitch_52  #00000007
        :pswitch_3f  #00000008
        :pswitch_13  #00000009
        :pswitch_c  #0000000a
    .end packed-switch
.end method
