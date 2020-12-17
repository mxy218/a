.class Lcom/android/systemui/statusbar/phone/NavigationModeController$1;
.super Landroid/content/BroadcastReceiver;
.source "NavigationModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x740c95e0

    if-eq p2, v0, :cond_e

    goto :goto_18

    :cond_e
    const-string p2, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, -0x1

    :goto_19
    if-eqz p1, :cond_1c

    goto :goto_22

    .line 102
    :cond_1c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    :goto_22
    return-void
.end method
