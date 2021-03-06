.class public Lcom/android/systemui/ForegroundServiceLifetimeExtender;
.super Ljava/lang/Object;
.source "ForegroundServiceLifetimeExtender.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender;


# static fields
.field static final MIN_FGS_TIME_MS:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mManagedEntries:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$setShouldManageLifetime$0$ForegroundServiceLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 80
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-eqz p0, :cond_16

    .line 82
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    return-void
.end method

.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 9

    if-nez p2, :cond_8

    .line 72
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void

    .line 76
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance p2, Lcom/android/systemui/-$$Lambda$ForegroundServiceLifetimeExtender$-eZMtetouaKnxc7j2jqc6zpz_AA;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/-$$Lambda$ForegroundServiceLifetimeExtender$-eZMtetouaKnxc7j2jqc6zpz_AA;-><init>(Lcom/android/systemui/ForegroundServiceLifetimeExtender;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const-wide/16 v0, 0x1388

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 88
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 5

    .line 53
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x40

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return v0

    .line 58
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 59
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p0

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x1388

    cmp-long p0, v1, p0

    if-gez p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public shouldExtendLifetimeForPendingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method
