.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final synthetic f$3:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final synthetic f$4:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$2:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$3:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$4:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$2:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$3:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$JxsLEMxUmhyUkDN3YQclxN0tn34;->f$4:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lambda$new$0$StatusBarNotificationPresenter(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V

    return-void
.end method
