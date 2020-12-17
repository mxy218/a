.class Lcom/android/systemui/bubbles/Bubble;
.super Ljava/lang/Object;
.source "Bubble.java"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

.field private final mGroupId:Ljava/lang/String;

.field private mIconView:Lcom/android/systemui/bubbles/BubbleView;

.field private mInflated:Z

.field private final mKey:Ljava/lang/String;

.field private mLastAccessed:J

.field private mLastUpdated:J

.field private mShowBubbleUpdateDot:Z

.field private mShowInShadeWhenBubble:Z

.field private mSuppressFlyout:Z

.field private mUserBadgedAppIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShowInShadeWhenBubble:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    .line 93
    iput-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 94
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 95
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/bubbles/Bubble;->mLastUpdated:J

    .line 96
    invoke-static {p2}, Lcom/android/systemui/bubbles/Bubble;->groupId(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mGroupId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 101
    :try_start_20
    iget-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 102
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const v0, 0xc2200

    .line 101
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_3b

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mAppName:Ljava/lang/String;

    .line 110
    :cond_3b
    iget-object p2, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mUserBadgedAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_55} :catch_56

    goto :goto_60

    .line 113
    :catch_56
    iget-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mAppName:Ljava/lang/String;

    :goto_60
    return-void
.end method

.method private getDimenForPackageUser(Landroid/content/Context;ILjava/lang/String;I)I
    .registers 6

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p3, :cond_1c

    const/4 v0, -0x1

    if-ne p4, v0, :cond_b

    move p4, p1

    .line 411
    :cond_b
    :try_start_b
    invoke-virtual {p0, p3, p4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    .line 412
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_13} :catch_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    const-string p2, "Bubble"

    const-string p3, "Couldn\'t find desired height res id"

    .line 417
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1c
    :cond_1c
    return p1
.end method

.method public static groupId(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private shouldSuppressNotification()Z
    .registers 2

    .line 424
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method


# virtual methods
.method cleanupExpandedState()V
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_7

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->cleanUpExpandedState()V

    :cond_7
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "key: "

    .line 443
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  showInShade:   "

    .line 444
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->showInShadeWhenBubble()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  showDot:       "

    .line 445
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->showBubbleDot()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  showFlyout:    "

    .line 446
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->showFlyoutForBubble()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  desiredHeight: "

    .line 447
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getDesiredHeightString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  suppressNotif: "

    .line 448
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  autoExpand:    "

    .line 449
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 455
    :cond_4
    instance-of v0, p1, Lcom/android/systemui/bubbles/Bubble;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 456
    :cond_a
    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    .line 457
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method getBubbleIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 321
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1, p0}, Lcom/android/systemui/bubbles/BubbleController;->canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_1b

    if-eqz v0, :cond_1b

    .line 322
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method getDesiredHeight(Landroid/content/Context;)F
    .registers 5

    .line 295
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_2f

    .line 298
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 299
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 300
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 298
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/bubbles/Bubble;->getDimenForPackageUser(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 302
    :cond_2f
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result p0

    int-to-float p0, p0

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    return p0
.end method

.method getDesiredHeightString()Ljava/lang/String;
    .registers 2

    .line 308
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    .line 309
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1a

    .line 311
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 313
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getDisplayId()I
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getVirtualDisplayId()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    return-object p0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method getIconView()Lcom/android/systemui/bubbles/BubbleView;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BubbleView;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method getLastActivity()J
    .registers 5

    .line 204
    iget-wide v0, p0, Lcom/android/systemui/bubbles/Bubble;->mLastUpdated:J

    iget-wide v2, p0, Lcom/android/systemui/bubbles/Bubble;->mLastAccessed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getLastUpdateTime()J
    .registers 3

    .line 211
    iget-wide v0, p0, Lcom/android/systemui/bubbles/Bubble;->mLastUpdated:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getSettingsIntent()Landroid/content/Intent;
    .registers 4

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p0

    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x8000000

    .line 331
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 332
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x20000000

    .line 333
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method getUpdateMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 8

    .line 342
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 343
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 346
    :try_start_d
    const-class v2, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_13} :catch_a6
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_13} :catch_a6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_13} :catch_a6

    const-string v3, "android.text"

    if-eqz v2, :cond_2d

    .line 349
    :try_start_17
    iget-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.bigText"

    .line 350
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_2c

    .line 353
    :cond_26
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_2c
    return-object p1

    .line 354
    :cond_2d
    const-class v2, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_7c

    .line 355
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.messages"

    .line 357
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    .line 356
    invoke-static {p0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object p0

    .line 361
    invoke-static {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object p0

    if-eqz p0, :cond_aa

    .line 364
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 365
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5a

    :cond_59
    move-object v0, v1

    .line 370
    :goto_5a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$string;->notification_summary_message_format:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 374
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v3, v4

    .line 371
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 376
    :cond_77
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 379
    :cond_7c
    const-class p1, Landroid/app/Notification$InboxStyle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 380
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.textLines"

    .line 381
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_aa

    .line 384
    array-length p1, p0

    if-lez p1, :cond_aa

    .line 385
    array-length p1, p0

    sub-int/2addr p1, v4

    aget-object p0, p0, p1

    return-object p0

    .line 387
    :cond_96
    const-class p1, Landroid/app/Notification$MediaStyle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9f

    return-object v1

    .line 392
    :cond_9f
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_a5
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_a5} :catch_a6
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_a5} :catch_a6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_17 .. :try_end_a5} :catch_a6

    return-object p0

    :catch_a6
    move-exception p0

    .line 397
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_aa
    return-object v1
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 462
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method inflate(Landroid/view/LayoutInflater;Lcom/android/systemui/bubbles/BubbleStackView;)V
    .registers 6

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mInflated:Z

    if-eqz v0, :cond_5

    return-void

    .line 165
    :cond_5
    sget v0, Lcom/android/systemui/R$layout;->bubble_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BubbleView;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleView;->setBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BubbleView;

    iget-object v2, p0, Lcom/android/systemui/bubbles/Bubble;->mUserBadgedAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/bubbles/BubbleView;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 170
    sget v0, Lcom/android/systemui/R$layout;->bubble_expanded_view:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/BubbleExpandedView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    .line 172
    iget-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setBubble(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mInflated:Z

    return-void
.end method

.method isOngoing()Z
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method markAsAccessedAt(J)V
    .registers 3

    .line 232
    iput-wide p1, p0, Lcom/android/systemui/bubbles/Bubble;->mLastAccessed:J

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/Bubble;->setShowInShadeWhenBubble(Z)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/Bubble;->setShowBubbleDot(Z)V

    return-void
.end method

.method setContentVisibility(Z)V
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_7

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    :cond_7
    return-void
.end method

.method setShowBubbleDot(Z)V
    .registers 2

    .line 258
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    return-void
.end method

.method setShowInShadeWhenBubble(Z)V
    .registers 2

    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mShowInShadeWhenBubble:Z

    return-void
.end method

.method setSuppressFlyout(Z)V
    .registers 2

    .line 282
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mSuppressFlyout:Z

    return-void
.end method

.method shouldAutoExpand()Z
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 430
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method showBubbleDot()Z
    .registers 2

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationDot()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method showFlyoutForBubble()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/Bubble;->mSuppressFlyout:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressPeek()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method showInShadeWhenBubble()Z
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/android/systemui/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 243
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/Bubble;->mShowInShadeWhenBubble:Z

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bubble{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateDotVisibility()V
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BubbleView;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(Z)V

    :cond_8
    return-void
.end method

.method updateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 4

    .line 192
    iput-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 193
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/bubbles/Bubble;->mLastUpdated:J

    .line 194
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/Bubble;->mInflated:Z

    if-eqz p1, :cond_18

    .line 195
    iget-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mIconView:Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/BubbleView;->update(Lcom/android/systemui/bubbles/Bubble;)V

    .line 196
    iget-object p1, p0, Lcom/android/systemui/bubbles/Bubble;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->update(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_18
    return-void
.end method
