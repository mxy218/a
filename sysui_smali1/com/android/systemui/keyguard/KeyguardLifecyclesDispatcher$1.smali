.class Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;
.super Landroid/os/Handler;
.source "KeyguardLifecyclesDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6c

    .line 79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :pswitch_1c  #0x7
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$100(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatchFinishedGoingToSleep()V

    goto :goto_6b

    .line 73
    :pswitch_26  #0x6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$100(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatchStartedGoingToSleep()V

    goto :goto_6b

    .line 70
    :pswitch_30  #0x5
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$100(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatchFinishedWakingUp()V

    goto :goto_6b

    .line 67
    :pswitch_3a  #0x4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$100(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatchStartedWakingUp()V

    goto :goto_6b

    .line 64
    :pswitch_44  #0x3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$000(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatchScreenTurnedOff()V

    goto :goto_6b

    .line 61
    :pswitch_4e  #0x2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$000(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatchScreenTurningOff()V

    goto :goto_6b

    .line 58
    :pswitch_58  #0x1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$000(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatchScreenTurnedOn()V

    goto :goto_6b

    .line 55
    :pswitch_62  #0x0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->access$000(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatchScreenTurningOn()V

    :goto_6b
    return-void

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_62  #00000000
        :pswitch_58  #00000001
        :pswitch_4e  #00000002
        :pswitch_44  #00000003
        :pswitch_3a  #00000004
        :pswitch_30  #00000005
        :pswitch_26  #00000006
        :pswitch_1c  #00000007
    .end packed-switch
.end method
