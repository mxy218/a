.class Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;
.super Ljava/lang/Object;
.source "NotificationViewHierarchyManager.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl$OnAccessChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;ZZ)V
    .registers 4

    .line 151
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->access$000(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)Landroid/content/Context;

    move-result-object p0

    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, p1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_18

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateClearAll()V

    :cond_18
    return-void
.end method
