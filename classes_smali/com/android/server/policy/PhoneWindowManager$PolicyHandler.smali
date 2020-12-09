.class Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .registers 3

    .line 742
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 745
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_123

    const/4 v1, 0x4

    if-eq v0, v1, :cond_119

    const/4 v1, 0x5

    if-eq v0, v1, :cond_113

    const/4 v1, 0x6

    if-eq v0, v1, :cond_106

    const/4 v1, 0x7

    if-eq v0, v1, :cond_100

    const/16 v1, 0x64

    if-eq v0, v1, :cond_fa

    const/16 v1, 0x65

    const/4 v2, 0x1

    if-eq v0, v1, :cond_f1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_12e

    goto/16 :goto_12d

    .line 831
    :pswitch_20  #0x1c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTop(I)V

    .line 832
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1802(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto/16 :goto_fa

    .line 828
    :pswitch_30  #0x1b
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1700(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 829
    goto/16 :goto_12d

    .line 821
    :pswitch_37  #0x1a
    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->removeMessages(I)V

    .line 822
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_ACTIVITY_NOTIFICATION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 824
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.USER_ACTIVITY"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 826
    goto/16 :goto_12d

    .line 792
    :pswitch_55  #0x19
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$900(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 793
    goto/16 :goto_12d

    .line 779
    :pswitch_5c  #0x18
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 780
    goto/16 :goto_12d

    .line 774
    :pswitch_63  #0x17
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 775
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 776
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$400(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;I)V

    .line 777
    goto/16 :goto_12d

    .line 818
    :pswitch_70  #0x16
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1600(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 819
    goto/16 :goto_12d

    .line 815
    :pswitch_77  #0x15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 816
    goto/16 :goto_12d

    .line 812
    :pswitch_80  #0x14
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManagerInternal;->onBackKeyPressed()V

    .line 813
    goto/16 :goto_12d

    .line 807
    :pswitch_89  #0x13
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 808
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_12d

    .line 804
    :pswitch_9c  #0x12
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 805
    goto/16 :goto_12d

    .line 801
    :pswitch_a3  #0x11
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 802
    goto/16 :goto_12d

    .line 798
    :pswitch_aa  #0x10
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1100(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 799
    goto/16 :goto_12d

    .line 795
    :pswitch_b1  #0xf
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1000(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 796
    goto/16 :goto_12d

    .line 789
    :pswitch_b8  #0xe
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$800(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 790
    goto/16 :goto_12d

    .line 785
    :pswitch_bf  #0xd
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_ce

    move v1, v2

    :cond_ce
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v4, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->access$600(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    .line 786
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$700(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 787
    goto :goto_12d

    .line 782
    :pswitch_d9  #0xc
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock()V

    .line 783
    goto :goto_12d

    .line 771
    :pswitch_df  #0xb
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 772
    goto :goto_12d

    .line 756
    :pswitch_e5  #0xa
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 757
    goto :goto_12d

    .line 753
    :pswitch_eb  #0x9
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$000(Lcom/android/server/policy/PhoneWindowManager;Z)V

    .line 754
    goto :goto_12d

    .line 837
    :cond_f1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    .line 838
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManager;->mIsLongPress:Z

    goto :goto_12d

    .line 834
    :cond_fa
    :goto_fa
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$1900(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 835
    goto :goto_12d

    .line 768
    :cond_100
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$200(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 769
    goto :goto_12d

    .line 763
    :cond_106
    const-string p1, "WindowManager"

    const-string v0, "Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$100(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 765
    goto :goto_12d

    .line 760
    :cond_113
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$100(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 761
    goto :goto_12d

    .line 750
    :cond_119
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    .line 751
    goto :goto_12d

    .line 747
    :cond_123
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    .line 748
    nop

    .line 841
    :cond_12d
    :goto_12d
    return-void

    :pswitch_data_12e
    .packed-switch 0x9
        :pswitch_eb  #00000009
        :pswitch_e5  #0000000a
        :pswitch_df  #0000000b
        :pswitch_d9  #0000000c
        :pswitch_bf  #0000000d
        :pswitch_b8  #0000000e
        :pswitch_b1  #0000000f
        :pswitch_aa  #00000010
        :pswitch_a3  #00000011
        :pswitch_9c  #00000012
        :pswitch_89  #00000013
        :pswitch_80  #00000014
        :pswitch_77  #00000015
        :pswitch_70  #00000016
        :pswitch_63  #00000017
        :pswitch_5c  #00000018
        :pswitch_55  #00000019
        :pswitch_37  #0000001a
        :pswitch_30  #0000001b
        :pswitch_20  #0000001c
    .end packed-switch
.end method
