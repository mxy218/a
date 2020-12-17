.class Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;
.super Ljava/lang/Object;
.source "NotificationLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 107
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 109
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$002(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;J)J

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$100(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_5b

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 129
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 130
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$200(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;->isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    .line 132
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v3

    .line 131
    invoke-static {v4, v2, v1, v5, v3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v3

    .line 133
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$300(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v5, :cond_55

    .line 136
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_58

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 142
    :cond_55
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 145
    :cond_5b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$300(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$400(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$300(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$500(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Landroid/util/ArraySet;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$300(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$600(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->onVisibilityChanged(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$500(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Landroid/util/ArraySet;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method
