.class public abstract Lcom/android/systemui/statusbar/AlertingNotificationManager;
.super Ljava/lang/Object;
.source "AlertingNotificationManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;,
        Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;
    }
.end annotation


# instance fields
.field protected final mAlertEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoDismissNotificationDecay:I

.field protected final mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

.field protected final mExtendedLifetimeAlertEntries:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mMinimumDisplayTime:I

.field protected mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mExtendedLifetimeAlertEntries:Landroid/util/ArraySet;

    .line 56
    new-instance v0, Landroid/os/Handler;

    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic lambda$getAllEntries$0(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method


# virtual methods
.method protected final addAlertEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 5

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->createAlertEntry()Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->onAlertEntryAdded(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V

    const/16 p0, 0x800

    .line 192
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected canRemoveImmediately(Ljava/lang/String;)Z
    .registers 2

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    if-eqz p0, :cond_1b

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->wasShownLongEnough()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method protected createAlertEntry()Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;
    .registers 2

    .line 234
    new-instance v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;-><init>(Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-object v0
.end method

.method public getAllEntries()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$p-A8-yzC_BK0PtkudKAmBZE-xfo;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$p-A8-yzC_BK0PtkudKAmBZE-xfo;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public abstract getContentFlag()I
.end method

.method public hasNotifications()Z
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAlerting(Ljava/lang/String;)Z
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected abstract onAlertEntryAdded(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V
.end method

.method protected abstract onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V
.end method

.method public releaseAllImmediately()V
    .registers 3

    const-string v0, "AlertNotifManager"

    const/4 v1, 0x2

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "releaseAllImmediately"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_e
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 135
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    goto :goto_1d

    :cond_2d
    return-void
.end method

.method protected final removeAlertEntry(Ljava/lang/String;)V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    if-nez v0, :cond_b

    return-void

    .line 210
    :cond_b
    iget-object v1, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V

    const/16 v2, 0x800

    .line 213
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->sendAccessibilityEvent(I)V

    .line 214
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->reset()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mExtendedLifetimeAlertEntries:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-eqz v0, :cond_2c

    .line 217
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    .line 219
    :cond_2c
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mExtendedLifetimeAlertEntries:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Z)Z
    .registers 5

    const-string v0, "AlertNotifManager"

    const/4 v1, 0x2

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "removeNotification"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    if-nez p2, :cond_28

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->canRemoveImmediately(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23

    goto :goto_28

    .line 95
    :cond_23
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAsSoonAsPossible()V

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_28
    :goto_28
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    return v1
.end method

.method public setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    return-void
.end method

.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 3

    if-eqz p2, :cond_15

    .line 265
    iget-object p2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mExtendedLifetimeAlertEntries:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAsSoonAsPossible()V

    goto :goto_1a

    .line 271
    :cond_15
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mExtendedLifetimeAlertEntries:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_1a
    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 2

    .line 259
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->canRemoveImmediately(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 5

    const-string v0, "AlertNotifManager"

    const/4 v1, 0x2

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "showNotification"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->addAlertEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 69
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->updateNotification(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setInterruption()V

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    const/4 v2, 0x0

    .line 72
    invoke-static {v0, p0, p1, v1, v2}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;II)V

    return-void
.end method

.method public updateNotification(Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "AlertNotifManager"

    const/4 v1, 0x2

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "updateNotification"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    if-nez p0, :cond_1a

    return-void

    .line 119
    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->sendAccessibilityEvent(I)V

    if-eqz p2, :cond_27

    const/4 p1, 0x1

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->updateEntry(Z)V

    :cond_27
    return-void
.end method
