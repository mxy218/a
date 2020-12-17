.class Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 80
    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 84
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 85
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 93
    iget-object v5, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v5, v5, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    iget-object v6, v4, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v6, v6, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v5, v6, :cond_1a

    if-eqz v5, :cond_19

    move v7, v8

    :cond_19
    return v7

    :cond_1a
    if-eqz v5, :cond_50

    .line 97
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$000(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getSingle(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I

    move-result v1

    .line 98
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$000(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getSingle(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    if-eq v1, v0, :cond_3f

    if-le v1, v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v7, v8

    :goto_3e
    return v7

    .line 102
    :cond_3f
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 107
    :cond_50
    invoke-static {v3}, Lcom/flyme/systemui/drivemode/DriveMode;->isDriveModeNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_57

    return v7

    .line 109
    :cond_57
    invoke-static {v4}, Lcom/flyme/systemui/drivemode/DriveMode;->isDriveModeNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_5e

    return v8

    .line 114
    :cond_5e
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$100(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v9, 0x0

    if-eqz v5, :cond_93

    .line 116
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5, v6, v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 117
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5, v6, v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 118
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v6

    .line 119
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v5

    .line 120
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v10}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v10

    .line 121
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v11}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v11

    goto :goto_96

    :cond_93
    move v5, v6

    move v10, v9

    move v11, v10

    .line 124
    :goto_96
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$200(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v12

    .line 127
    iget-object v13, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ac

    if-le v6, v8, :cond_ac

    move v13, v8

    goto :goto_ad

    :cond_ac
    move v13, v9

    .line 129
    :goto_ad
    iget-object v14, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b9

    if-le v5, v8, :cond_b9

    move v12, v8

    goto :goto_ba

    :cond_b9
    move v12, v9

    :goto_ba
    const/4 v14, 0x4

    if-lt v6, v14, :cond_c5

    .line 133
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$300(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_c5

    move v6, v8

    goto :goto_c6

    :cond_c5
    move v6, v9

    :goto_c6
    if-lt v5, v14, :cond_d0

    .line 135
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$300(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_d0

    move v5, v8

    goto :goto_d1

    :cond_d0
    move v5, v9

    .line 138
    :goto_d1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v14

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v15

    if-nez v14, :cond_ef

    if-nez v13, :cond_ef

    if-nez v6, :cond_ef

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v16

    if-eqz v16, :cond_ee

    goto :goto_ef

    :cond_ee
    move v8, v9

    :cond_ef
    :goto_ef
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsTopBucket(Z)V

    if-nez v15, :cond_fe

    if-nez v12, :cond_fe

    if-nez v5, :cond_fe

    .line 145
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v8

    if-eqz v8, :cond_ff

    :cond_fe
    const/4 v9, 0x1

    :cond_ff
    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsTopBucket(Z)V

    if-eq v14, v15, :cond_10c

    if-eqz v14, :cond_109

    move/from16 v16, v7

    goto :goto_10b

    :cond_109
    const/16 v16, 0x1

    :goto_10b
    return v16

    :cond_10c
    if-eqz v14, :cond_119

    .line 151
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$400(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    return v0

    :cond_119
    if-eq v13, v12, :cond_123

    if-eqz v13, :cond_120

    move/from16 v16, v7

    goto :goto_122

    :cond_120
    const/16 v16, 0x1

    :goto_122
    return v16

    :cond_123
    if-eq v6, v5, :cond_12d

    if-eqz v6, :cond_12a

    move/from16 v16, v7

    goto :goto_12c

    :cond_12a
    const/16 v16, 0x1

    :goto_12c
    return v16

    .line 158
    :cond_12d
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v5

    if-eq v0, v5, :cond_145

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    mul-int/2addr v0, v7

    return v0

    :cond_145
    if-eq v10, v11, :cond_14c

    .line 163
    invoke-static {v10, v11}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 166
    :cond_14c
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 78
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method
