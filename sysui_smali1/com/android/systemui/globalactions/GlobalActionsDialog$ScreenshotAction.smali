.class Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 3

    .line 604
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const p1, 0x1080505

    const v0, 0x10402bd

    .line 605
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "settings_screenrecord_long_press"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 637
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/ScreenRecordHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/ScreenRecordHelper;->launchRecordPrompt()V

    goto :goto_1c

    .line 639
    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->onPress()V

    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method public onPress()V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
