.class final Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;
.super Landroid/view/IGestureCallback$Stub;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 2

    .line 3079
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/view/IGestureCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V
    .registers 3

    .line 3079
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method


# virtual methods
.method public onGestureTrigger(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureTrigger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintIconVisible()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$7302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 3084
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3085
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
