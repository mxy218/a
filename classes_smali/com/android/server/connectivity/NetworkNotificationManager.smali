.class public Lcom/android/server/connectivity/NetworkNotificationManager;
.super Ljava/lang/Object;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationTypeMap:Landroid/util/SparseIntArray;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 87
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 88
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    .line 89
    return-void
.end method

.method private static getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 3

    .line 93
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_11

    .line 94
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_e

    return v0

    .line 93
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method private static getIcon(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I
    .registers 3

    .line 110
    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    .line 111
    const p0, 0x10807dd

    return p0

    .line 114
    :cond_7
    sget-object p0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne p1, p0, :cond_f

    .line 115
    const p0, 0x1080544

    goto :goto_12

    .line 116
    :cond_f
    const p0, 0x10807e1

    .line 114
    :goto_12
    return p0
.end method

.method private static getTransportName(I)Ljava/lang/String;
    .registers 3

    .line 100
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    const v1, 0x1070089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 103
    :try_start_b
    aget-object p0, v1, p0
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_d} :catch_e

    return-object p0

    .line 104
    :catch_e
    move-exception p0

    .line 105
    const p0, 0x1040458

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static nameOf(I)Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 346
    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object p0

    .line 347
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_b
    const-string p0, "UNKNOWN"

    :goto_d
    return-object p0
.end method

.method private static priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I
    .registers 3

    .line 355
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 356
    return v0

    .line 358
    :cond_4
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$1;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_1a

    .line 371
    return v0

    .line 369
    :pswitch_10  #0x5, 0x6
    const/4 p0, 0x1

    return p0

    .line 366
    :pswitch_12  #0x4
    const/4 p0, 0x2

    return p0

    .line 364
    :pswitch_14  #0x3
    const/4 p0, 0x3

    return p0

    .line 362
    :pswitch_16  #0x2
    const/4 p0, 0x4

    return p0

    .line 360
    :pswitch_18  #0x1
    const/4 p0, 0x5

    return p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_16  #00000002
        :pswitch_14  #00000003
        :pswitch_12  #00000004
        :pswitch_10  #00000005
        :pswitch_10  #00000006
    .end packed-switch
.end method

.method static tagFor(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 341
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "ConnectivityNotification:%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearNotification(I)V
    .registers 10

    .line 300
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 301
    return-void

    .line 303
    :cond_9
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 306
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 307
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 306
    const-string v6, "clearing notification tag=%s event=%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_32} :catch_33

    .line 314
    goto :goto_49

    .line 311
    :catch_33
    move-exception v2

    .line 312
    sget-object v4, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 313
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 312
    const-string v0, "failed to clear notification tag=%s event=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    :goto_49
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 316
    return-void
.end method

.method public clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 292
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    .line 293
    if-eq p2, v0, :cond_d

    .line 294
    return-void

    .line 296
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 297
    return-void
.end method

.method public setProvNotificationVisible(ZILjava/lang/String;)V
    .registers 12

    .line 322
    if-eqz p1, :cond_19

    .line 323
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    iget-object p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 325
    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 326
    goto :goto_1c

    .line 327
    :cond_19
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 329
    :goto_1c
    return-void
.end method

.method public showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .registers 25

    .line 143
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    iget v5, v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    .line 147
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v0, :cond_37

    .line 148
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v8

    .line 149
    iget-object v9, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    .line 150
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2b

    iget-object v9, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v9

    .line 152
    :cond_2b
    iget-object v10, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-nez v10, :cond_36

    return-void

    .line 153
    :cond_36
    goto :goto_3a

    .line 155
    :cond_37
    nop

    .line 156
    const/4 v9, 0x0

    move v8, v6

    .line 161
    :goto_3a
    iget-object v10, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 162
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v10

    .line 163
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v11

    invoke-static/range {p2 .. p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v12

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-le v11, v12, :cond_69

    .line 164
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v3, v1, v6

    .line 166
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v15

    aput-object v10, v1, v14

    .line 164
    const-string v2, "ignoring notification %s for network %s with existing notification %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 169
    :cond_69
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 172
    sget-object v11, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v6

    .line 174
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v14

    aput-object v9, v12, v13

    const/4 v13, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v12, v13

    .line 172
    const-string/jumbo v13, "showNotification tag=%s event=%s transport=%s name=%s highPriority=%s"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 180
    invoke-static {v8, v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getIcon(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v12

    .line 181
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const v14, 0x1040797

    if-ne v3, v13, :cond_be

    if-ne v8, v15, :cond_be

    .line 182
    new-array v7, v15, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 183
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    .line 182
    invoke-virtual {v11, v14, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    const v7, 0x1040798

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1d1

    .line 185
    :cond_be
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v13, :cond_e2

    if-ne v8, v15, :cond_e2

    .line 187
    const v7, 0x1040453

    new-array v8, v15, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 188
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    .line 187
    invoke-virtual {v11, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const v7, 0x1040454

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1d1

    .line 190
    :cond_e2
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v13, :cond_103

    if-ne v8, v15, :cond_103

    .line 192
    new-array v7, v15, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 193
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    .line 192
    invoke-virtual {v11, v14, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const v7, 0x1040798

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1d1

    .line 195
    :cond_103
    sget-object v13, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v13, :cond_191

    .line 196
    const v13, 0x104044f

    if-eqz v8, :cond_147

    const v14, 0x1040450

    if-eq v8, v15, :cond_123

    .line 222
    new-array v0, v15, [Ljava/lang/Object;

    aput-object v7, v0, v6

    invoke-virtual {v11, v13, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    new-array v7, v15, [Ljava/lang/Object;

    aput-object v9, v7, v6

    invoke-virtual {v11, v14, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 224
    goto/16 :goto_1d1

    .line 198
    :cond_123
    const v8, 0x1040785

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v7, v9, v6

    invoke-virtual {v11, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 199
    new-array v8, v15, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 200
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    .line 199
    invoke-virtual {v11, v14, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    move-object/from16 v17, v7

    move-object v7, v0

    move-object/from16 v0, v17

    goto/16 :goto_1d1

    .line 203
    :cond_147
    new-array v8, v15, [Ljava/lang/Object;

    aput-object v7, v8, v6

    invoke-virtual {v11, v13, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 206
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v8

    .line 207
    const v9, 0x7fffffff

    .line 208
    instance-of v0, v8, Landroid/net/StringNetworkSpecifier;

    if-eqz v0, :cond_181

    .line 210
    :try_start_15c
    move-object v0, v8

    check-cast v0, Landroid/net/StringNetworkSpecifier;

    iget-object v0, v0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_165
    .catch Ljava/lang/NumberFormatException; {:try_start_15c .. :try_end_165} :catch_166

    .line 215
    goto :goto_181

    .line 212
    :catch_166
    move-exception v0

    .line 213
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NumberFormatException on "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v8, Landroid/net/StringNetworkSpecifier;

    iget-object v8, v8, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_181
    :goto_181
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v9}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 220
    move-object/from16 v17, v7

    move-object v7, v0

    move-object/from16 v0, v17

    goto :goto_1d1

    .line 226
    :cond_191
    sget-object v7, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v7, :cond_1a7

    .line 227
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    const v7, 0x104011d

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1d1

    .line 229
    :cond_1a7
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_261

    .line 230
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v7

    .line 232
    const v8, 0x1040455

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v7, v9, v6

    invoke-virtual {v11, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 233
    const v9, 0x1040456

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v7, v13, v6

    aput-object v0, v13, v15

    invoke-virtual {v11, v9, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 235
    move-object v0, v8

    .line 250
    :goto_1d1
    if-eqz v10, :cond_1d5

    move v8, v15

    goto :goto_1d6

    :cond_1d5
    move v8, v6

    .line 251
    :goto_1d6
    if-eqz p6, :cond_1dd

    if-nez v8, :cond_1dd

    .line 252
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    goto :goto_1df

    .line 253
    :cond_1dd
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    .line 254
    :goto_1df
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v10, :cond_1f3

    move v6, v15

    .line 256
    :cond_1f3
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 257
    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 258
    invoke-virtual {v6, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 259
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v9, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    .line 260
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 262
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 263
    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 267
    sget-object v6, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v6, :cond_233

    .line 268
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_236

    .line 270
    :cond_233
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 273
    :goto_236
    sget-object v6, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v6, :cond_246

    .line 274
    new-instance v3, Landroid/app/Notification$TvExtender;

    invoke-direct {v3}, Landroid/app/Notification$TvExtender;-><init>()V

    invoke-virtual {v3, v8}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 277
    :cond_246
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 279
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    :try_start_24f
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_256
    .catch Ljava/lang/NullPointerException; {:try_start_24f .. :try_end_256} :catch_257

    .line 284
    goto :goto_260

    .line 282
    :catch_257
    move-exception v0

    .line 283
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setNotificationVisible: visible notificationManager error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :goto_260
    return-void

    .line 235
    :cond_261
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-eq v3, v0, :cond_28d

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_26a

    goto :goto_28d

    .line 241
    :cond_26a
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on network transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 239
    :cond_28d
    :goto_28d
    return-void
.end method

.method public showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6

    .line 332
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result p2

    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object p2

    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const p2, 0x1040457

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 336
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 337
    return-void
.end method
