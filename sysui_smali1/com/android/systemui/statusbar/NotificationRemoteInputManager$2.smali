.class Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 4

    .line 341
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$400(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/SmartReplyController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/SmartReplyController;->stopSending(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eqz p3, :cond_14

    if-eqz p1, :cond_14

    .line 344
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPerformRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 332
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$400(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/SmartReplyController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SmartReplyController;->stopSending(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
