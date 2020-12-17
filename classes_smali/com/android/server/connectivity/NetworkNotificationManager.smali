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

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationTypeMap:Landroid/util/SparseIntArray;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V
    .registers 5
    .param p1, "c"  # Landroid/content/Context;
    .param p2, "t"  # Landroid/telephony/TelephonyManager;
    .param p3, "n"  # Landroid/app/NotificationManager;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 89
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 90
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    .line 91
    return-void
.end method

.method private static getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 3
    .param p0, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_11

    .line 96
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_e

    return v0

    .line 95
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0  # "i":I
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method private static getIcon(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I
    .registers 4
    .param p0, "transportType"  # I
    .param p1, "notifyType"  # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 112
    const v0, 0x10807ea

    const/4 v1, 0x1

    if-eq p0, v1, :cond_7

    .line 113
    return v0

    .line 115
    :cond_7
    if-ne p0, v1, :cond_d

    .line 118
    const v0, 0xa080290

    goto :goto_e

    .line 120
    :cond_d
    nop

    .line 115
    :goto_e
    return v0
.end method

.method private static getTransportName(I)Ljava/lang/String;
    .registers 5
    .param p0, "transportType"  # I

    .line 102
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x107007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "networkTypes":[Ljava/lang/String;
    :try_start_b
    aget-object v2, v1, p0
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_d} :catch_e

    return-object v2

    .line 106
    :catch_e
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const v3, 0x1040457

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static nameOf(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 401
    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    .line 402
    .local v0, "t":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_b
    const-string v1, "UNKNOWN"

    :goto_d
    return-object v1
.end method

.method private static priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I
    .registers 4
    .param p0, "t"  # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 410
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 411
    return v0

    .line 413
    :cond_4
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$1;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1a

    .line 426
    return v0

    .line 424
    :pswitch_10  #0x5, 0x6
    const/4 v0, 0x1

    return v0

    .line 421
    :pswitch_12  #0x4
    const/4 v0, 0x2

    return v0

    .line 419
    :pswitch_14  #0x3
    const/4 v0, 0x3

    return v0

    .line 417
    :pswitch_16  #0x2
    const/4 v0, 0x4

    return v0

    .line 415
    :pswitch_18  #0x1
    const/4 v0, 0x5

    return v0

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

.method private setWifiLoginNotification(Landroid/app/Notification$Builder;Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 12
    .param p1, "builder"  # Landroid/app/Notification$Builder;
    .param p2, "r"  # Landroid/content/res/Resources;
    .param p3, "title"  # Ljava/lang/CharSequence;
    .param p4, "details"  # Ljava/lang/CharSequence;

    .line 319
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "ssid":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.meizu.intent.action.CLEAR_WIFI_PORTAL_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, "ignoreIntent":Landroid/content/Intent;
    const-string v2, "disconnect_ssid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 324
    const v3, 0xa1000af

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    .line 325
    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v2, v6, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 326
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 327
    .local v2, "ignoreAction":Landroid/app/Notification$Action;
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 329
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 330
    .local v3, "extra":Landroid/os/Bundle;
    const-string v4, "headsup"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 331
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const v6, 0xa1000ae

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "appName":Ljava/lang/String;
    const-string v6, "android.substName"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 335
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 336
    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 337
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 338
    iget-object v5, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    const v6, 0xa0802d3

    invoke-virtual {v5, v6}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 340
    return-void
.end method

.method static tagFor(I)Ljava/lang/String;
    .registers 4
    .param p0, "id"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 396
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ConnectivityNotification:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearNotification(I)V
    .registers 10
    .param p1, "id"  # I

    .line 355
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 356
    return-void

    .line 358
    :cond_9
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 361
    .local v1, "eventId":I
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 362
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 361
    const-string v6, "clearing notification tag=%s event=%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_32} :catch_33

    .line 369
    goto :goto_49

    .line 366
    :catch_33
    move-exception v2

    .line 367
    .local v2, "npe":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 368
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 367
    const-string v5, "failed to clear notification tag=%s event=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v2  # "npe":Ljava/lang/NullPointerException;
    :goto_49
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 371
    return-void
.end method

.method public clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .registers 5
    .param p1, "id"  # I
    .param p2, "notifyType"  # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 346
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 347
    .local v0, "previousEventId":I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v1

    .line 348
    .local v1, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    if-eq p2, v1, :cond_d

    .line 349
    return-void

    .line 351
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 352
    return-void
.end method

.method public setProvNotificationVisible(ZILjava/lang/String;)V
    .registers 14
    .param p1, "visible"  # Z
    .param p2, "id"  # I
    .param p3, "action"  # Ljava/lang/String;

    .line 377
    if-eqz p1, :cond_1a

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 380
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v5, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p2

    move-object v8, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 381
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v1  # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_1d

    .line 382
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 384
    :goto_1d
    return-void
.end method

.method public showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .registers 29
    .param p1, "id"  # I
    .param p2, "notifyType"  # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .param p3, "nai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "switchToNai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p5, "intent"  # Landroid/app/PendingIntent;
    .param p6, "highPriority"  # Z

    .line 148
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "tag":Ljava/lang/String;
    iget v6, v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    .line 152
    .local v6, "eventId":I
    if-eqz v4, :cond_35

    .line 153
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    .line 154
    .local v0, "transportType":I
    iget-object v7, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "extraInfo":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_27

    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v8

    goto :goto_28

    :cond_27
    move-object v8, v7

    .line 157
    .local v8, "name":Ljava/lang/String;
    :goto_28
    iget-object v9, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_33

    return-void

    .line 158
    .end local v7  # "extraInfo":Ljava/lang/String;
    :cond_33
    move v7, v0

    goto :goto_38

    .line 160
    .end local v0  # "transportType":I
    .end local v8  # "name":Ljava/lang/String;
    :cond_35
    const/4 v0, 0x0

    .line 161
    .restart local v0  # "transportType":I
    const/4 v8, 0x0

    move v7, v0

    .line 166
    .end local v0  # "transportType":I
    .local v7, "transportType":I
    .restart local v8  # "name":Ljava/lang/String;
    :goto_38
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 167
    .local v9, "previousEventId":I
    invoke-static {v9}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v10

    .line 168
    .local v10, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-le v0, v11, :cond_69

    .line 169
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v14

    .line 171
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v15

    aput-object v10, v11, v13

    .line 169
    const-string/jumbo v12, "ignoring notification %s for network %s with existing notification %s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 174
    :cond_69
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 177
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v14

    .line 179
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v13

    aput-object v8, v11, v12

    const/4 v12, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v11, v12

    .line 177
    const-string/jumbo v12, "showNotification tag=%s event=%s transport=%s name=%s highPriority=%s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v11, 0x0

    .line 186
    .local v11, "notifyWifiSignin":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 189
    .local v12, "r":Landroid/content/res/Resources;
    invoke-static {v7, v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getIcon(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v13

    .line 190
    .local v13, "icon":I
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "notifyType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "transportType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const v15, 0x104078f

    if-ne v3, v0, :cond_e1

    const/4 v14, 0x1

    if-ne v7, v14, :cond_e1

    .line 192
    new-array v14, v14, [Ljava/lang/Object;

    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 193
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v14, v16

    .line 192
    invoke-virtual {v12, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "title":Ljava/lang/CharSequence;
    const v14, 0x1040790

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 196
    .local v14, "details":Ljava/lang/CharSequence;
    return-void

    .line 198
    .end local v0  # "title":Ljava/lang/CharSequence;
    .end local v14  # "details":Ljava/lang/CharSequence;
    :cond_e1
    sget-object v14, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v14, :cond_107

    const/4 v14, 0x1

    if-ne v7, v14, :cond_107

    .line 200
    const v0, 0x1040452

    new-array v14, v14, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 201
    invoke-virtual {v15}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 200
    invoke-virtual {v12, v0, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0  # "title":Ljava/lang/CharSequence;
    const v14, 0x1040453

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 204
    .restart local v14  # "details":Ljava/lang/CharSequence;
    return-void

    .line 206
    .end local v0  # "title":Ljava/lang/CharSequence;
    .end local v14  # "details":Ljava/lang/CharSequence;
    :cond_107
    sget-object v14, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v14, :cond_132

    const/4 v14, 0x1

    if-ne v7, v14, :cond_132

    .line 208
    new-array v0, v14, [Ljava/lang/Object;

    iget-object v14, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 209
    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v0, v16

    .line 208
    invoke-virtual {v12, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0  # "title":Ljava/lang/CharSequence;
    const v14, 0x1040790

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v8

    move/from16 v21, v9

    const/16 v17, 0x0

    move-object v9, v0

    .restart local v14  # "details":Ljava/lang/CharSequence;
    goto/16 :goto_24d

    .line 211
    .end local v0  # "title":Ljava/lang/CharSequence;
    .end local v14  # "details":Ljava/lang/CharSequence;
    :cond_132
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_203

    .line 212
    const v0, 0x104044e

    if-eqz v7, :cond_19f

    const/4 v15, 0x1

    if-eq v7, v15, :cond_15e

    .line 242
    new-array v14, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v17

    invoke-virtual {v12, v0, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .restart local v0  # "title":Ljava/lang/CharSequence;
    new-array v14, v15, [Ljava/lang/Object;

    aput-object v8, v14, v17

    const v15, 0x104044f

    invoke-virtual {v12, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 244
    .restart local v14  # "details":Ljava/lang/CharSequence;
    move-object/from16 v20, v8

    move/from16 v21, v9

    move-object v9, v0

    goto/16 :goto_24d

    .line 214
    .end local v0  # "title":Ljava/lang/CharSequence;
    .end local v14  # "details":Ljava/lang/CharSequence;
    :cond_15e
    const/16 v17, 0x0

    const v0, 0x1040785

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v17

    invoke-virtual {v12, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0  # "title":Ljava/lang/CharSequence;
    new-array v15, v14, [Ljava/lang/Object;

    iget-object v14, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 216
    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v17

    .line 215
    const v14, 0x104044f

    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 218
    .restart local v14  # "details":Ljava/lang/CharSequence;
    move-object/from16 v18, v0

    const/4 v15, 0x1

    .end local v0  # "title":Ljava/lang/CharSequence;
    .local v18, "title":Ljava/lang/CharSequence;
    new-array v0, v15, [Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v0, v17

    const v15, 0xa1000ad

    invoke-virtual {v12, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .end local v18  # "title":Ljava/lang/CharSequence;
    .restart local v0  # "title":Ljava/lang/CharSequence;
    const/4 v11, 0x1

    .line 221
    move-object/from16 v20, v8

    move/from16 v21, v9

    move-object v9, v0

    goto/16 :goto_24d

    .line 223
    .end local v0  # "title":Ljava/lang/CharSequence;
    .end local v14  # "details":Ljava/lang/CharSequence;
    :cond_19f
    const/16 v17, 0x0

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v17

    invoke-virtual {v12, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 226
    .local v14, "title":Ljava/lang/CharSequence;
    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v15

    .line 227
    .local v15, "specifier":Landroid/net/NetworkSpecifier;
    const v16, 0x7fffffff

    .line 228
    .local v16, "subId":I
    instance-of v0, v15, Landroid/net/StringNetworkSpecifier;

    if-eqz v0, :cond_1ee

    .line 230
    :try_start_1bb
    move-object v0, v15

    check-cast v0, Landroid/net/StringNetworkSpecifier;

    iget-object v0, v0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1c4
    .catch Ljava/lang/NumberFormatException; {:try_start_1bb .. :try_end_1c4} :catch_1cb

    move/from16 v16, v0

    .line 235
    move-object/from16 v20, v8

    move/from16 v21, v9

    goto :goto_1f4

    .line 232
    :catch_1cb
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v19, v0

    .end local v0  # "e":Ljava/lang/NumberFormatException;
    .local v19, "e":Ljava/lang/NumberFormatException;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v8

    .end local v8  # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v9

    .end local v9  # "previousEventId":I
    .local v21, "previousEventId":I
    const-string v9, "NumberFormatException on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v15

    check-cast v9, Landroid/net/StringNetworkSpecifier;

    iget-object v9, v9, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f2

    .line 228
    .end local v19  # "e":Ljava/lang/NumberFormatException;
    .end local v20  # "name":Ljava/lang/String;
    .end local v21  # "previousEventId":I
    .restart local v8  # "name":Ljava/lang/String;
    .restart local v9  # "previousEventId":I
    :cond_1ee
    move-object/from16 v20, v8

    move/from16 v21, v9

    .line 238
    .end local v8  # "name":Ljava/lang/String;
    .end local v9  # "previousEventId":I
    .restart local v20  # "name":Ljava/lang/String;
    .restart local v21  # "previousEventId":I
    :goto_1f2
    move/from16 v0, v16

    .end local v16  # "subId":I
    .local v0, "subId":I
    :goto_1f4
    iget-object v8, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 239
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "details":Ljava/lang/CharSequence;
    move-object v9, v14

    const/16 v17, 0x0

    move-object v14, v8

    goto :goto_24d

    .line 246
    .end local v0  # "subId":I
    .end local v14  # "title":Ljava/lang/CharSequence;
    .end local v15  # "specifier":Landroid/net/NetworkSpecifier;
    .end local v20  # "name":Ljava/lang/String;
    .end local v21  # "previousEventId":I
    .local v8, "name":Ljava/lang/String;
    .restart local v9  # "previousEventId":I
    :cond_203
    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v8  # "name":Ljava/lang/String;
    .end local v9  # "previousEventId":I
    .restart local v20  # "name":Ljava/lang/String;
    .restart local v21  # "previousEventId":I
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_220

    .line 247
    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "title":Ljava/lang/CharSequence;
    const v8, 0x1040119

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v9, v0

    const/16 v17, 0x0

    .local v14, "details":Ljava/lang/CharSequence;
    goto :goto_24d

    .line 249
    .end local v0  # "title":Ljava/lang/CharSequence;
    .end local v14  # "details":Ljava/lang/CharSequence;
    :cond_220
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_2f5

    .line 250
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, "toTransport":Ljava/lang/String;
    const v9, 0x1040454

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v8, v15, v17

    invoke-virtual {v12, v9, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, "title":Ljava/lang/CharSequence;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v8, v15, v17

    aput-object v0, v15, v14

    const v14, 0x1040455

    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 255
    .end local v0  # "fromTransport":Ljava/lang/String;
    .end local v8  # "toTransport":Ljava/lang/String;
    .restart local v14  # "details":Ljava/lang/CharSequence;
    nop

    .line 270
    :goto_24d
    if-eqz v10, :cond_251

    const/4 v0, 0x1

    goto :goto_253

    :cond_251
    move/from16 v0, v17

    :goto_253
    move v8, v0

    .line 271
    .local v8, "hasPreviousNotification":Z
    if-eqz p6, :cond_25b

    if-nez v8, :cond_25b

    .line 272
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    goto :goto_25d

    .line 273
    :cond_25b
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    :goto_25d
    move-object v15, v0

    .line 274
    .local v15, "channelId":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    move v4, v7

    move/from16 v16, v8

    .end local v7  # "transportType":I
    .end local v8  # "hasPreviousNotification":Z
    .local v4, "transportType":I
    .local v16, "hasPreviousNotification":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-object v7, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v7, :cond_276

    const/4 v7, 0x1

    goto :goto_278

    :cond_276
    move/from16 v7, v17

    .line 276
    :goto_278
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 278
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const v8, 0x106001c

    .line 280
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 283
    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 284
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 287
    .local v8, "builder":Landroid/app/Notification$Builder;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_2ba

    .line 288
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v14}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_2bd

    .line 290
    :cond_2ba
    invoke-virtual {v8, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 293
    :goto_2bd
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_2cd

    .line 294
    new-instance v0, Landroid/app/Notification$TvExtender;

    invoke-direct {v0}, Landroid/app/Notification$TvExtender;-><init>()V

    invoke-virtual {v0, v15}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 298
    :cond_2cd
    if-eqz v11, :cond_2d2

    .line 299
    invoke-direct {v1, v8, v12, v9, v14}, Lcom/android/server/connectivity/NetworkNotificationManager;->setWifiLoginNotification(Landroid/app/Notification$Builder;Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 304
    :cond_2d2
    iget-object v0, v8, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    const v7, 0xa0801c4

    invoke-virtual {v0, v7}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 306
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 308
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    :try_start_2e3
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_2ea
    .catch Ljava/lang/NullPointerException; {:try_start_2e3 .. :try_end_2ea} :catch_2eb

    .line 313
    goto :goto_2f4

    .line 311
    :catch_2eb
    move-exception v0

    .line 312
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setNotificationVisible: visible notificationManager error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v0  # "npe":Ljava/lang/NullPointerException;
    :goto_2f4
    return-void

    .line 255
    .end local v4  # "transportType":I
    .end local v8  # "builder":Landroid/app/Notification$Builder;
    .end local v9  # "title":Ljava/lang/CharSequence;
    .end local v14  # "details":Ljava/lang/CharSequence;
    .end local v15  # "channelId":Ljava/lang/String;
    .end local v16  # "hasPreviousNotification":Z
    .local v7, "transportType":I
    :cond_2f5
    move v4, v7

    .end local v7  # "transportType":I
    .restart local v4  # "transportType":I
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-eq v3, v0, :cond_322

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_2ff

    goto :goto_322

    .line 261
    :cond_2ff
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on network transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 259
    :cond_322
    :goto_322
    return-void
.end method

.method public showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "fromNai"  # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"  # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 387
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "toTransport":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const v5, 0x1040456

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 392
    return-void
.end method
