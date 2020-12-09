.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Ljava/lang/String;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field private final mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/android/server/notification/NotificationComparator$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationComparator$1;-><init>(Lcom/android/server/notification/NotificationComparator;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 45
    iget-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    new-instance p1, Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationComparator;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    return-object p1
.end method

.method private isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 179
    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 180
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 179
    :goto_17
    return p1
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 185
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 186
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 187
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 189
    :cond_19
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4

    .line 137
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 138
    const/4 p1, 0x0

    return p1

    .line 140
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result p1

    return p1
.end method

.method private isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 145
    return v1

    .line 148
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_10

    .line 149
    return v1

    .line 152
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method private isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 175
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->hasMediaSession()Z

    move-result p1

    return p1
.end method

.method private isOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 171
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .registers 9

    .line 52
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    .line 53
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    .line 54
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_f

    move v5, v2

    goto :goto_10

    :cond_f
    move v5, v3

    .line 55
    :goto_10
    if-lt v1, v4, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    .line 57
    :goto_14
    if-eq v5, v2, :cond_1d

    .line 59
    invoke-static {v5, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 63
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 64
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    .line 66
    if-eq v2, v3, :cond_2e

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 71
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 72
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    .line 74
    if-eq v2, v3, :cond_3f

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 79
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    .line 81
    if-eq v2, v3, :cond_50

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 86
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    .line 88
    nop

    .line 89
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    .line 91
    if-eqz v2, :cond_6e

    if-eqz v3, :cond_6e

    .line 93
    if-eqz v4, :cond_77

    .line 94
    mul-int/lit8 v4, v4, -0x1

    return v4

    .line 96
    :cond_6e
    if-eq v2, v3, :cond_77

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 101
    :cond_77
    if-eq v0, v1, :cond_80

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 107
    :cond_80
    if-eqz v4, :cond_85

    .line 108
    mul-int/lit8 v4, v4, -0x1

    return v4

    .line 112
    :cond_85
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v0

    .line 113
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v1

    .line 114
    if-eq v0, v1, :cond_96

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 119
    :cond_96
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    .line 120
    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    .line 121
    if-eq v0, v1, :cond_af

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 126
    :cond_af
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    .line 127
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v1

    .line 128
    if-eq v0, v1, :cond_c0

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 133
    :cond_c0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 36
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    return p1
.end method

.method protected isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result p1

    return p1
.end method

.method protected isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 156
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    .line 157
    return v1

    .line 159
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_14

    .line 160
    const/4 p1, 0x1

    return p1

    .line 162
    :cond_14
    return v1
.end method
