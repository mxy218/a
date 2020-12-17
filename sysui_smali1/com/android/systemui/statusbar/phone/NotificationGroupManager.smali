.class public Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
.super Ljava/lang/Object;
.source "NotificationGroupManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;,
        Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mBarState:I

.field private mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsUpdatingUnchangedGroup:Z

.field private mIsolatedEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListeners:Landroid/util/ArraySet;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 61
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method private getBubbleController()Lcom/android/systemui/bubbles/BubbleController;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    if-nez v0, :cond_e

    .line 66
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 68
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method private getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    const/4 p1, 0x0

    if-nez p0, :cond_c

    goto :goto_12

    .line 386
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p0, :cond_11

    goto :goto_12

    :cond_11
    move-object p1, p0

    :goto_12
    return-object p1
.end method

.method private getIsolatedChild(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 248
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNumberOfIsolatedChildren(Ljava/lang/String;)I
    .registers 6

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 239
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2a
    return v1
.end method

.method private getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I
    .registers 3

    .line 298
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result v0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-eqz p0, :cond_1d

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    add-int/2addr v0, p0

    return v0
.end method

.method private hasIsolatedChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .registers 2

    .line 233
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isGroupSuppressed(Ljava/lang/String;)Z
    .registers 2

    .line 305
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-eqz p0, :cond_10

    .line 306
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isIsolated(Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    .line 445
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    .line 284
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 285
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    if-ne p0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private isolateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 5

    .line 533
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 536
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 538
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 546
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 547
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_28

    :cond_38
    return-void
.end method

.method private onAlertStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 3

    if-eqz p2, :cond_c

    .line 486
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->shouldIsolate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 487
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isolateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_f

    .line 490
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->stopIsolatingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_f
    :goto_f
    return-void
.end method

.method private onEntryBecomingChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->shouldIsolate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isolateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_9
    return-void
.end method

.method private onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .registers 5

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEntryRemovedInternal: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oriPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationGroupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v1, :cond_35

    return-void

    .line 129
    :cond_35
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 130
    iget-object p2, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_43
    const/4 p1, 0x0

    .line 132
    iput-object p1, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 134
    :goto_46
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 135
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 136
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p1, :cond_70

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_60
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 139
    invoke-interface {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupRemoved(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Ljava/lang/String;)V

    goto :goto_60

    :cond_70
    return-void
.end method

.method private setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V
    .registers 5

    .line 97
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    .line 98
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_22

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 100
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupExpansionChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    goto :goto_c

    :cond_22
    return-void
.end method

.method private setStatusBarState(I)V
    .registers 3

    .line 310
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    .line 311
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    :cond_a
    return-void
.end method

.method private shouldIsolate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 2

    .line 506
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private stopIsolatingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 5

    .line 557
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 558
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 560
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 561
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 563
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 564
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_25

    :cond_35
    return-void
.end method

.method private updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 208
    :cond_3
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getBubbleController()Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/bubbles/BubbleController;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2a
    move v3, v5

    goto :goto_10

    .line 216
    :cond_2c
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    .line 217
    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_4f

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-nez v6, :cond_4f

    if-eq v2, v5, :cond_4e

    if-nez v2, :cond_4f

    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 220
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 221
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->hasIsolatedChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v2

    if-nez v2, :cond_4e

    if-eqz v3, :cond_4f

    :cond_4e
    move v1, v5

    :cond_4f
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    .line 222
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eq v0, v1, :cond_74

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5b
    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 224
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    if-nez v2, :cond_5b

    .line 225
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    invoke-interface {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupSuppressionChanged(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    .line 226
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_5b

    :cond_74
    return-void
.end method


# virtual methods
.method public addOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public collapseAllGroups()V
    .registers 7

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_26

    .line 322
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 323
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v5, :cond_20

    .line 324
    invoke-direct {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    .line 326
    :cond_20
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_26
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "GroupManager state:"

    .line 579
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  number of groups: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n    key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_29

    .line 584
    :cond_57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\n    isolated entries: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string p3, "      "

    .line 586
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ", "

    .line 587
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_7b

    :cond_a2
    return-void
.end method

.method public getChildrenNotificationCount(Landroid/service/notification/StatusBarNotification;)I
    .registers 3

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 677
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .registers 2

    .line 428
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 429
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 431
    :cond_b
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .registers 2

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

.method public getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 401
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 402
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getIsolatedChild(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 404
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    return-object v1
.end method

.method public getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .registers 2

    .line 378
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

.method public isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 337
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-eqz p0, :cond_2a

    .line 338
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_2a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eqz p1, :cond_1f

    goto :goto_2a

    .line 341
    :cond_1f
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_28

    return v1

    :cond_28
    const/4 p0, 0x1

    return p0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public isGroupChild(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    .line 468
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 472
    :cond_8
    iget-object p0, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez v1, :cond_24

    iget-boolean p0, p0, Landroid/service/notification/StatusBarNotification$Filter;->filterByUserBefore:Z

    if-eqz p0, :cond_13

    goto :goto_24

    .line 476
    :cond_13
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 v0, 0x1

    :cond_24
    :goto_24
    return v0
.end method

.method public isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 85
    :cond_10
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    return p0
.end method

.method public isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    .line 455
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 458
    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    return p0
.end method

.method public isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 292
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 293
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 294
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 357
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-eqz p0, :cond_2e

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_1b

    goto :goto_2e

    .line 361
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    :goto_2e
    return v1
.end method

.method public isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSuppressed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 8

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEntryAdded: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oriPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationGroupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 148
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setDebugThrowable(Ljava/lang/Throwable;)V

    .line 150
    :cond_38
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 152
    iget-object v2, v0, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v3, v2, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez v3, :cond_12f

    iget-boolean v2, v2, Landroid/service/notification/StatusBarNotification$Filter;->filterByUserBefore:Z

    if-eqz v2, :cond_46

    goto/16 :goto_12f

    .line 156
    :cond_46
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v3, :cond_78

    .line 160
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;-><init>()V

    .line 161
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 163
    invoke-interface {v5, v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupCreated(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Ljava/lang/String;)V

    goto :goto_68

    :cond_78
    if-eqz v2, :cond_e7

    .line 167
    iget-object v0, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_dc

    if-eq v0, p1, :cond_dc

    .line 169
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDebugThrowable()Ljava/lang/Throwable;

    move-result-object v2

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent entries found with the same key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "existing removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_bf

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c1

    :cond_bf
    const-string v0, ""

    :goto_c1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " added removed"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 170
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_dc
    iget-object v0, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    goto :goto_12f

    .line 180
    :cond_e7
    iput-object p1, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 181
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->areChildrenExpanded()Z

    move-result p1

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    .line 182
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 183
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12f

    .line 184
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    .line 185
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_109
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 187
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryBecomingChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_109

    .line 189
    :cond_119
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 190
    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    goto :goto_11f

    :cond_12f
    :goto_12f
    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 106
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .registers 11

    .line 257
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 260
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    .line 261
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v2, :cond_20

    if-ne v4, v5, :cond_20

    goto :goto_21

    :cond_20
    move v3, v6

    .line 262
    :goto_21
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    .line 263
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 266
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 267
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    .line 268
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 269
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_68

    .line 271
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 272
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    goto :goto_68

    :cond_61
    if-nez v4, :cond_68

    if-eqz v5, :cond_68

    .line 275
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryBecomingChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_68
    :goto_68
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 3

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onAlertStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    .line 593
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setStatusBarState(I)V

    return-void
.end method

.method public setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez p1, :cond_f

    return-void

    .line 93
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez p1, :cond_10

    const/4 p0, 0x0

    return p0

    .line 440
    :cond_10
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    .line 441
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    return p0
.end method

.method public updateSuppression(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-eqz p1, :cond_13

    .line 416
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    :cond_13
    return-void
.end method
