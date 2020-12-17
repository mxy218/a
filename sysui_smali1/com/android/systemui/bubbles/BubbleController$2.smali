.class Lcom/android/systemui/bubbles/BubbleController$2;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;


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

    .line 266
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$2;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupSuppressionChanged(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V
    .registers 3

    .line 273
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_b

    .line 274
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-nez p2, :cond_25

    if-eqz p1, :cond_25

    .line 276
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleController$2;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 277
    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 278
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$2;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->removeSuppressedSummary(Ljava/lang/String;)V

    :cond_25
    return-void
.end method
