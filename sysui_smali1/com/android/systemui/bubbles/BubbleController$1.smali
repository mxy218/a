.class Lcom/android/systemui/bubbles/BubbleController$1;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$1;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .registers 2

    .line 250
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$1;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 251
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$1;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateDots()V

    :cond_11
    return-void
.end method

.method public onZenChanged(I)V
    .registers 2

    .line 243
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$1;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 244
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$1;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateDots()V

    :cond_11
    return-void
.end method
