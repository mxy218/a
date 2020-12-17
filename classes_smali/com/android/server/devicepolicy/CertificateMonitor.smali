.class public Lcom/android/server/devicepolicy/CertificateMonitor;
.super Ljava/lang/Object;
.source "CertificateMonitor.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManager"

.field protected static final MONITORING_CERT_NOTIFICATION_ID:I = 0x21


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field private final mRootCaReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 92
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Landroid/os/Handler;)V
    .registers 11
    .param p1, "service"  # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "injector"  # Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
    .param p3, "handler"  # Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/android/server/devicepolicy/CertificateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/CertificateMonitor$1;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mRootCaReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 65
    iput-object p2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 66
    iput-object p3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 75
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mRootCaReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/CertificateMonitor;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/devicepolicy/CertificateMonitor;
    .param p1, "x1"  # Landroid/os/UserHandle;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method private buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;
    .registers 22
    .param p1, "userHandle"  # Landroid/os/UserHandle;
    .param p2, "pendingCertificateCount"  # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 173
    :try_start_6
    iget-object v0, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_f2

    .line 177
    .local v0, "userContext":Landroid/content/Context;
    nop

    .line 179
    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 183
    .local v11, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 185
    .local v4, "parentUserId":I
    iget-object v5, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    const v7, 0x10406ab

    const/4 v12, 0x0

    if-eqz v5, :cond_4b

    .line 186
    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 186
    invoke-virtual {v11, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "contentText":Ljava/lang/String;
    const v6, 0x108080d

    .line 189
    .local v6, "smallIconId":I
    iget-object v7, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    move-result v4

    move v14, v4

    move-object v15, v5

    move v13, v6

    goto :goto_7f

    .line 190
    .end local v5  # "contentText":Ljava/lang/String;
    .end local v6  # "smallIconId":I
    :cond_4b
    iget-object v5, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v5, v8, :cond_72

    .line 191
    iget-object v5, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "ownerName":Ljava/lang/String;
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 193
    invoke-virtual {v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v12

    .line 192
    invoke-virtual {v11, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "contentText":Ljava/lang/String;
    const v5, 0x108080d

    .line 195
    .local v5, "smallIconId":I
    move v14, v4

    move v13, v5

    move-object v15, v6

    goto :goto_7f

    .line 196
    .end local v5  # "smallIconId":I
    .end local v6  # "contentText":Ljava/lang/String;
    :cond_72
    const v5, 0x10406aa

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "contentText":Ljava/lang/String;
    const v6, 0x108008a

    move v14, v4

    move-object v15, v5

    move v13, v6

    .line 201
    .end local v4  # "parentUserId":I
    .end local v5  # "contentText":Ljava/lang/String;
    .local v13, "smallIconId":I
    .local v14, "parentUserId":I
    .local v15, "contentText":Ljava/lang/String;
    :goto_7f
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    .line 202
    .local v10, "dialogIntent":Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    const-string v4, "android.settings.extra.number_of_certificates"

    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v10, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 208
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x100000

    .line 207
    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    .line 209
    .local v16, "targetInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v16, :cond_b0

    .line 210
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    :cond_b0
    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const/4 v6, 0x0

    const/high16 v8, 0x8000000

    const/4 v9, 0x0

    .line 215
    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v17

    .line 213
    move-object v5, v0

    move-object v7, v10

    move-object/from16 v18, v10

    .end local v10  # "dialogIntent":Landroid/content/Intent;
    .local v18, "dialogIntent":Landroid/content/Intent;
    move-object/from16 v10, v17

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->pendingIntentGetActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 217
    .local v4, "notifyIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {v5, v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1150019

    .line 219
    invoke-virtual {v11, v6, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 221
    invoke-virtual {v5, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 222
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 223
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x106001c

    .line 224
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 225
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 217
    return-object v5

    .line 174
    .end local v0  # "userContext":Landroid/content/Context;
    .end local v4  # "notifyIntent":Landroid/app/PendingIntent;
    .end local v11  # "resources":Landroid/content/res/Resources;
    .end local v13  # "smallIconId":I
    .end local v14  # "parentUserId":I
    .end local v15  # "contentText":Ljava/lang/String;
    .end local v16  # "targetInfo":Landroid/content/pm/ActivityInfo;
    .end local v18  # "dialogIntent":Landroid/content/Intent;
    :catch_f2
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create context as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DevicePolicyManager"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 v4, 0x0

    return-object v4
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "certBuffer"  # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 229
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 230
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private updateInstalledCertificates(Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "userHandle"  # Landroid/os/UserHandle;

    .line 145
    const-string v0, "DevicePolicyManager"

    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 146
    return-void

    .line 151
    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_17} :catch_49

    .line 155
    .local v1, "installedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 156
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->onInstalledCertificatesChanged(Landroid/os/UserHandle;Ljava/util/Collection;)V

    .line 158
    nop

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAcceptedCaCertificates(Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 160
    .local v2, "pendingCertificateCount":I
    const/16 v3, 0x21

    if-eqz v2, :cond_3f

    .line 161
    invoke-direct {p0, p1, v2}, Lcom/android/server/devicepolicy/CertificateMonitor;->buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;

    move-result-object v4

    .line 162
    .local v4, "noti":Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v4, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 164
    .end local v4  # "noti":Landroid/app/Notification;
    goto :goto_48

    .line 165
    :cond_3f
    iget-object v4, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 168
    :goto_48
    return-void

    .line 152
    .end local v1  # "installedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2  # "pendingCertificateCount":I
    :catch_49
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Could not retrieve certificates from KeyChain service"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    return-void
.end method


# virtual methods
.method public getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .param p1, "userHandle"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_27
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_7} :catch_20

    .line 117
    .local v1, "conn":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_7
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 118
    :try_start_13
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_27
    .catch Ljava/lang/AssertionError; {:try_start_13 .. :try_end_16} :catch_20

    .line 117
    return-object v2

    .line 116
    :catchall_17
    move-exception v2

    .end local v1  # "conn":Landroid/security/KeyChain$KeyChainConnection;
    .end local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .end local p1  # "userHandle":Landroid/os/UserHandle;
    :try_start_18
    throw v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 118
    .restart local v1  # "conn":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .restart local p1  # "userHandle":Landroid/os/UserHandle;
    :catchall_19
    move-exception v3

    if-eqz v1, :cond_1f

    :try_start_1c
    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .end local p1  # "userHandle":Landroid/os/UserHandle;
    :cond_1f
    throw v3
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_20} :catch_27
    .catch Ljava/lang/AssertionError; {:try_start_1c .. :try_end_20} :catch_20

    .line 121
    .end local v1  # "conn":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .restart local p1  # "userHandle":Landroid/os/UserHandle;
    :catch_20
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/AssertionError;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 118
    .end local v0  # "e":Ljava/lang/AssertionError;
    :catch_27
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 120
    return-object v0
.end method

.method public installCaCert(Landroid/os/UserHandle;[B)Ljava/lang/String;
    .registers 10
    .param p1, "userHandle"  # Landroid/os/UserHandle;
    .param p2, "certBuffer"  # [B

    .line 83
    const-string/jumbo v0, "installCaCertsToKeyChain(): "

    const-string v1, "DevicePolicyManager"

    const/4 v2, 0x0

    :try_start_6
    invoke-static {p2}, Lcom/android/server/devicepolicy/CertificateMonitor;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 84
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4
    :try_end_14
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_14} :catch_43
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_43

    move-object v3, v4

    .line 88
    .local v3, "pemCert":[B
    nop

    .line 90
    :try_start_16
    iget-object v4, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v4
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_3d
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1c} :catch_31

    .line 91
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1c
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v5
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_28

    .line 92
    :try_start_24
    invoke-static {v2, v4}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_3d
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_31

    .line 91
    return-object v5

    .line 90
    :catchall_28
    move-exception v5

    .end local v3  # "pemCert":[B
    .end local v4  # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .end local p1  # "userHandle":Landroid/os/UserHandle;
    .end local p2  # "certBuffer":[B
    :try_start_29
    throw v5
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 92
    .restart local v3  # "pemCert":[B
    .restart local v4  # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .restart local p1  # "userHandle":Landroid/os/UserHandle;
    .restart local p2  # "certBuffer":[B
    :catchall_2a
    move-exception v6

    if-eqz v4, :cond_30

    :try_start_2d
    invoke-static {v5, v4}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v3  # "pemCert":[B
    .end local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .end local p1  # "userHandle":Landroid/os/UserHandle;
    .end local p2  # "certBuffer":[B
    :cond_30
    throw v6
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_31} :catch_3d
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_31} :catch_31

    .line 94
    .end local v4  # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v3  # "pemCert":[B
    .restart local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .restart local p1  # "userHandle":Landroid/os/UserHandle;
    .restart local p2  # "certBuffer":[B
    :catch_31
    move-exception v4

    .line 95
    .local v4, "e1":Ljava/lang/InterruptedException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_42

    .line 92
    .end local v4  # "e1":Ljava/lang/InterruptedException;
    :catch_3d
    move-exception v4

    .line 93
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v4  # "e":Landroid/os/RemoteException;
    nop

    .line 98
    :goto_42
    return-object v2

    .line 85
    .end local v3  # "pemCert":[B
    :catch_43
    move-exception v0

    .line 86
    .local v0, "ce":Ljava/lang/Exception;
    const-string v3, "Problem converting cert"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    return-object v2
.end method

.method public synthetic lambda$onCertificateApprovalsChanged$0$CertificateMonitor(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 127
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onCertificateApprovalsChanged(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 127
    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public uninstallCaCerts(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 9
    .param p1, "userHandle"  # Landroid/os/UserHandle;
    .param p2, "aliases"  # [Ljava/lang/String;

    .line 102
    const-string v0, "DevicePolicyManager"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_36
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_28

    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/4 v2, 0x0

    .line 103
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    :try_start_a
    array-length v4, p2

    if-ge v3, v4, :cond_19

    .line 104
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    aget-object v5, p2, v3

    invoke-interface {v4, v5}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1f

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 106
    .end local v3  # "i":I
    :cond_19
    if-eqz v1, :cond_3c

    :try_start_1b
    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_36
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_28

    goto :goto_3c

    .line 102
    :catchall_1f
    move-exception v2

    .end local v1  # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .end local p1  # "userHandle":Landroid/os/UserHandle;
    .end local p2  # "aliases":[Ljava/lang/String;
    :try_start_20
    throw v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    .line 106
    .restart local v1  # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .restart local p1  # "userHandle":Landroid/os/UserHandle;
    .restart local p2  # "aliases":[Ljava/lang/String;
    :catchall_21
    move-exception v3

    if-eqz v1, :cond_27

    :try_start_24
    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .end local p1  # "userHandle":Landroid/os/UserHandle;
    .end local p2  # "aliases":[Ljava/lang/String;
    :cond_27
    throw v3
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_28} :catch_36
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_28} :catch_28

    .line 108
    .end local v1  # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0  # "this":Lcom/android/server/devicepolicy/CertificateMonitor;
    .restart local p1  # "userHandle":Landroid/os/UserHandle;
    .restart local p2  # "aliases":[Ljava/lang/String;
    :catch_28
    move-exception v1

    .line 109
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string v2, "CaCertUninstaller: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3d

    .line 106
    .end local v1  # "ie":Ljava/lang/InterruptedException;
    :catch_36
    move-exception v1

    .line 107
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "from CaCertUninstaller: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_3c
    :goto_3c
    nop

    .line 112
    :goto_3d
    return-void
.end method
