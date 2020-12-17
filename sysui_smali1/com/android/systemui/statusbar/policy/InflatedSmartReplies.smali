.class public Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;
.super Ljava/lang/Object;
.source "InflatedSmartReplies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

.field private final mSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private final mSmartSuggestionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "InflatedSmartReplies"

    const/4 v1, 0x3

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/SmartReplyView;",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartSuggestionButtons:Ljava/util/List;

    .line 63
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    return-void
.end method

.method static areSuggestionsSimilar(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-nez p1, :cond_a

    goto :goto_27

    .line 127
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->getSmartReplies()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->getSmartReplies()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 132
    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->getSmartActions()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->getSmartActions()Ljava/util/List;

    move-result-object p1

    .line 131
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->areDifferent(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_27
    :goto_27
    return v1
.end method

.method public static chooseSmartRepliesAndActions(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
    .registers 13

    .line 171
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/Notification;->findRemoteInputActionPair(Z)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x1

    .line 175
    invoke-virtual {v0, v3}, Landroid/app/Notification;->findRemoteInputActionPair(Z)Landroid/util/Pair;

    move-result-object v4

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->isEnabled()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3d

    .line 178
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->DEBUG:Z

    if-eqz p0, :cond_37

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Smart suggestions not enabled, not adding suggestions for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 180
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InflatedSmartReplies"

    .line 179
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_37
    new-instance p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    invoke-direct {p0, v6, v6}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V

    return-object p0

    .line 187
    :cond_3d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->requiresTargetingP()Z

    move-result p0

    if-eqz p0, :cond_4c

    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v5, 0x1c

    if-lt p0, v5, :cond_4a

    goto :goto_4c

    :cond_4a
    move p0, v1

    goto :goto_4d

    :cond_4c
    :goto_4c
    move p0, v3

    :goto_4d
    if-eqz p0, :cond_69

    if-eqz v2, :cond_69

    .line 190
    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/RemoteInput;

    .line 193
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/app/Notification$Action;

    iget-object p0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_69

    move p0, v3

    goto :goto_6a

    :cond_69
    move p0, v1

    .line 196
    :goto_6a
    invoke-virtual {v0}, Landroid/app/Notification;->getContextualActions()Ljava/util/List;

    move-result-object v5

    .line 197
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz p0, :cond_8d

    .line 202
    new-instance v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/app/RemoteInput;

    .line 203
    invoke-virtual {v9}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/app/RemoteInput;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification$Action;

    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v8, v9, v10, v2, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;-><init>([Ljava/lang/CharSequence;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Z)V

    goto :goto_8e

    :cond_8d
    move-object v8, v6

    :goto_8e
    if-eqz v7, :cond_95

    .line 209
    new-instance v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    invoke-direct {v6, v5, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;-><init>(Ljava/util/List;Z)V

    :cond_95
    if-nez p0, :cond_f5

    if-nez v7, :cond_f5

    .line 214
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartReplies:[Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b7

    if-eqz v4, :cond_b7

    iget-object p0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/app/Notification$Action;

    .line 216
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result p0

    if-eqz p0, :cond_b7

    iget-object p0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/app/Notification$Action;

    iget-object p0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_b7

    move p0, v3

    goto :goto_b8

    :cond_b7
    move p0, v1

    :goto_b8
    if-eqz p0, :cond_cb

    .line 219
    new-instance v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartReplies:[Ljava/lang/CharSequence;

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/RemoteInput;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/app/Notification$Action;

    iget-object v4, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v8, p0, v2, v4, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;-><init>([Ljava/lang/CharSequence;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Z)V

    .line 225
    :cond_cb
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartActions:Ljava/util/List;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_da

    .line 226
    invoke-virtual {v0}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result p0

    if-eqz p0, :cond_da

    move v1, v3

    :cond_da
    if-eqz v1, :cond_f5

    .line 228
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->systemGeneratedSmartActions:Ljava/util/List;

    .line 232
    const-class p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 233
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 234
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockTaskKioskModeActive()Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 235
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->filterWhiteListedLockTaskApps(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 237
    :cond_f0
    new-instance v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;-><init>(Ljava/util/List;Z)V

    .line 241
    :cond_f5
    new-instance p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V

    return-object p0
.end method

.method private static filterWhiteListedLockTaskApps(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 250
    const-class v0, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 251
    const-class v1, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    .line 252
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 255
    iget-object v4, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_2a

    goto :goto_19

    .line 256
    :cond_2a
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    .line 259
    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 260
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 262
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_43
    return-object v2
.end method

.method public static hasFreeformRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 2

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0, v0}, Landroid/app/Notification;->findRemoteInputActionPair(Z)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static inflate(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;
    .registers 14

    .line 90
    invoke-static {p3, p2}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->chooseSmartRepliesAndActions(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    move-result-object p3

    .line 91
    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 92
    new-instance p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p3}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)V

    return-object p0

    .line 100
    :cond_11
    invoke-static {p6, p3}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->areSuggestionsSimilar(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z

    move-result p6

    xor-int/lit8 v6, p6, 0x1

    .line 102
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflate(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object p0

    .line 104
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v0, p3, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-eqz v0, :cond_2b

    .line 106
    invoke-virtual {p0, v0, p4, p2, v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflateRepliesFromRemoteInput(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_2b
    iget-object v2, p3, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-eqz v2, :cond_3b

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    .line 112
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflateSmartActions(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Z)Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-interface {p6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_3b
    new-instance p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    invoke-direct {p1, p0, p6, p3}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)V

    return-object p1
.end method

.method public static shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z
    .registers 4

    .line 141
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-nez p1, :cond_a

    return v1

    .line 147
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.remoteInputSpinner"

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v1

    .line 153
    :cond_1b
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.hideSmartReplies"

    .line 154
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v1

    :cond_2c
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    return-object p0
.end method

.method public getSmartReplyView()Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    return-object p0
.end method

.method public getSmartSuggestionButtons()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->mSmartSuggestionButtons:Ljava/util/List;

    return-object p0
.end method
