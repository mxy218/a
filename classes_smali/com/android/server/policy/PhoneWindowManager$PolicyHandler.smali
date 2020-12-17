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

    .line 668
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"  # Lcom/android/server/policy/PhoneWindowManager$1;

    .line 668
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"  # Landroid/os/Message;

    .line 671
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_11a

    :pswitch_8  #0x8
    goto/16 :goto_118

    .line 757
    :pswitch_a  #0x1c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTop(I)V

    .line 758
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$1802(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto/16 :goto_118

    .line 754
    :pswitch_1a  #0x1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1700(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 755
    goto/16 :goto_118

    .line 747
    :pswitch_21  #0x1a
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->removeMessages(I)V

    .line 748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_ACTIVITY_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 750
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.USER_ACTIVITY"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 752
    goto/16 :goto_118

    .line 718
    .end local v0  # "intent":Landroid/content/Intent;
    :pswitch_3f  #0x19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$900(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 719
    goto/16 :goto_118

    .line 705
    :pswitch_46  #0x18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 706
    goto/16 :goto_118

    .line 700
    :pswitch_4d  #0x17
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 701
    .local v0, "deviceId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 702
    .local v1, "hint":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$400(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;I)V

    .line 703
    goto/16 :goto_118

    .line 744
    .end local v0  # "deviceId":I
    .end local v1  # "hint":Ljava/lang/String;
    :pswitch_5a  #0x16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1600(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 745
    goto/16 :goto_118

    .line 741
    :pswitch_61  #0x15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 742
    goto/16 :goto_118

    .line 738
    :pswitch_6a  #0x14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManagerInternal;->onBackKeyPressed()V

    .line 739
    goto/16 :goto_118

    .line 733
    :pswitch_73  #0x13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 734
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_118

    .line 730
    :pswitch_86  #0x12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 731
    goto/16 :goto_118

    .line 727
    :pswitch_8d  #0x11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 728
    goto/16 :goto_118

    .line 724
    :pswitch_94  #0x10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1100(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 725
    goto/16 :goto_118

    .line 721
    :pswitch_9b  #0xf
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1000(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 722
    goto/16 :goto_118

    .line 715
    :pswitch_a2  #0xe
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$800(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 716
    goto/16 :goto_118

    .line 711
    :pswitch_a9  #0xd
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_b8

    const/4 v2, 0x1

    :cond_b8
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v4, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$600(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    .line 712
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$700(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 713
    goto :goto_118

    .line 708
    :pswitch_c3  #0xc
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock()V

    .line 709
    goto :goto_118

    .line 697
    :pswitch_c9  #0xb
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 698
    goto :goto_118

    .line 682
    :pswitch_cf  #0xa
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 683
    goto :goto_118

    .line 679
    :pswitch_d5  #0x9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$000(Lcom/android/server/policy/PhoneWindowManager;Z)V

    .line 680
    goto :goto_118

    .line 693
    :pswitch_db  #0x7
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_e4

    const-string v0, "Setting mWindowManagerDrawComplete"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_e4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$200(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 695
    goto :goto_118

    .line 689
    :pswitch_ea  #0x6
    const-string v0, "Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$100(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 691
    goto :goto_118

    .line 685
    :pswitch_f5  #0x5
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_fe

    const-string v0, "Setting mKeyguardDrawComplete"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_fe
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$100(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 687
    goto :goto_118

    .line 676
    :pswitch_104  #0x4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    .line 677
    goto :goto_118

    .line 673
    :pswitch_10e  #0x3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    .line 674
    nop

    .line 761
    :cond_118
    :goto_118
    return-void

    nop

    :pswitch_data_11a
    .packed-switch 0x3
        :pswitch_10e  #00000003
        :pswitch_104  #00000004
        :pswitch_f5  #00000005
        :pswitch_ea  #00000006
        :pswitch_db  #00000007
        :pswitch_8  #00000008
        :pswitch_d5  #00000009
        :pswitch_cf  #0000000a
        :pswitch_c9  #0000000b
        :pswitch_c3  #0000000c
        :pswitch_a9  #0000000d
        :pswitch_a2  #0000000e
        :pswitch_9b  #0000000f
        :pswitch_94  #00000010
        :pswitch_8d  #00000011
        :pswitch_86  #00000012
        :pswitch_73  #00000013
        :pswitch_6a  #00000014
        :pswitch_61  #00000015
        :pswitch_5a  #00000016
        :pswitch_4d  #00000017
        :pswitch_46  #00000018
        :pswitch_3f  #00000019
        :pswitch_21  #0000001a
        :pswitch_1a  #0000001b
        :pswitch_a  #0000001c
    .end packed-switch
.end method
