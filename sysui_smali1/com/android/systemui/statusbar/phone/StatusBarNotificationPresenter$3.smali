.class Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;
.super Ljava/lang/Object;
.source "StatusBarNotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .registers 2

    .line 526
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$checkSave$0(Ljava/lang/Runnable;)Z
    .registers 1

    .line 533
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public checkSave(Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 531
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Landroid/app/KeyguardManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 532
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$3$840XxWS_RWDahgeIBbiGSPlNZGs;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$3$840XxWS_RWDahgeIBbiGSPlNZGs;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V

    goto :goto_2e

    .line 537
    :cond_2b
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_2e
    return-void
.end method
