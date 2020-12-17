.class public final Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;
.super Landroid/hardware/TriggerEventListener;
.source "KeyguardLiftController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardLiftController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006"
    }
    d2 = {
        "com/android/systemui/statusbar/phone/KeyguardLiftController$listener$1",
        "Landroid/hardware/TriggerEventListener;",
        "onTrigger",
        "",
        "event",
        "Landroid/hardware/TriggerEvent;",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 3

    .line 48
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 50
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->access$setListening$p(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Z)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->access$updateListeningState(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->access$getKeyguardUpdateMonitor$p(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    return-void
.end method
