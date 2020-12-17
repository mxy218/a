.class Lcom/android/systemui/statusbar/phone/StatusBar$15;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraLaunchGestureDetected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 4289
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 4292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/power/DoublePowerController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/power/DoublePowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/power/DoublePowerController;->startDoublePowerActivity()V

    .line 4293
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCameraGestureTrigger(Z)V

    return-void
.end method
