.class Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;
.super Landroid/database/ContentObserver;
.source "NotificationLockscreenUserManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 210
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 214
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$500(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    .line 215
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$600(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    .line 220
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$000(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 221
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$700(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 223
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateLockscreenNotificationSetting()V

    .line 224
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$100(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method
