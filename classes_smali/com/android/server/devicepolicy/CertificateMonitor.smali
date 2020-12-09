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
    .registers 2

    .line 92
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Landroid/os/Handler;)V
    .registers 11

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
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    const-string p1, "android.intent.action.USER_STARTED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string p1, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const/16 p1, 0x3e8

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 75
    iget-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mRootCaReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/CertificateMonitor;Landroid/os/UserHandle;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method private buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;
    .registers 15

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_6} :catch_e3

    .line 177
    nop

    .line 179
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 183
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 185
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v2

    const v3, 0x1080800

    const/4 v4, 0x1

    const v5, 0x10406af

    const/4 v9, 0x0

    if-eqz v2, :cond_46

    .line 186
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 187
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 186
    invoke-virtual {v8, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    nop

    .line 189
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    move-result v2

    move-object v11, v1

    move v1, v2

    move v10, v3

    goto :goto_75

    .line 190
    :cond_46
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne v2, v6, :cond_69

    .line 191
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    .line 192
    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 193
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    .line 192
    invoke-virtual {v8, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 194
    nop

    .line 195
    move-object v11, v2

    move v10, v3

    goto :goto_75

    .line 196
    :cond_69
    const v2, 0x10406ae

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    const v3, 0x108008a

    move-object v11, v2

    move v10, v3

    .line 201
    :goto_75
    new-instance v4, Landroid/content/Intent;

    const-string v2, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    const v2, 0x10008000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    const-string v2, "android.settings.extra.number_of_certificates"

    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    iget-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 208
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v2, 0x100000

    .line 207
    invoke-virtual {v4, p1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 209
    if-eqz p1, :cond_a5

    .line 210
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    :cond_a5
    iget-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    .line 215
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 213
    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->pendingIntentGetActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 217
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1150019

    .line 219
    invoke-virtual {v8, v1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 221
    invoke-virtual {p2, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 222
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const p2, 0x106001c

    .line 224
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 217
    return-object p1

    .line 174
    :catch_e3
    move-exception p2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create context as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DevicePolicyManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 p1, 0x0

    return-object p1
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .registers 3
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
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private updateInstalledCertificates(Landroid/os/UserHandle;)V
    .registers 6

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
    nop

    .line 156
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->onInstalledCertificatesChanged(Landroid/os/UserHandle;Ljava/util/Collection;)V

    .line 158
    nop

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAcceptedCaCertificates(Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 160
    const/16 v2, 0x21

    if-eqz v1, :cond_3f

    .line 161
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;

    move-result-object v1

    .line 162
    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 164
    goto :goto_48

    .line 165
    :cond_3f
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 168
    :goto_48
    return-void

    .line 152
    :catch_49
    move-exception p1

    .line 153
    const-string v1, "Could not retrieve certificates from KeyChain service"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    return-void
.end method


# virtual methods
.method public getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
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

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_27
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_7} :catch_20

    .line 117
    :try_start_7
    invoke-virtual {p1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 118
    :try_start_13
    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_27
    .catch Ljava/lang/AssertionError; {:try_start_13 .. :try_end_16} :catch_20

    .line 117
    return-object v1

    .line 116
    :catchall_17
    move-exception v1

    :try_start_18
    throw v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 118
    :catchall_19
    move-exception v2

    if-eqz p1, :cond_1f

    :try_start_1c
    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1f
    throw v2
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_20} :catch_27
    .catch Ljava/lang/AssertionError; {:try_start_1c .. :try_end_20} :catch_20

    .line 121
    :catch_20
    move-exception p1

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 118
    :catch_27
    move-exception p1

    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 120
    return-object v0
.end method

.method public installCaCert(Landroid/os/UserHandle;[B)Ljava/lang/String;
    .registers 8

    .line 83
    const-string v0, "installCaCertsToKeyChain(): "

    const-string v1, "DevicePolicyManager"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p2}, Lcom/android/server/devicepolicy/CertificateMonitor;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 84
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p2
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_13} :catch_41
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_41

    .line 88
    nop

    .line 90
    :try_start_14
    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1a} :catch_2f

    .line 91
    :try_start_1a
    invoke-virtual {p1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    move-result-object p2
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    .line 92
    :try_start_22
    invoke-static {v2, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_2f

    .line 91
    return-object p2

    .line 90
    :catchall_26
    move-exception p2

    :try_start_27
    throw p2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 92
    :catchall_28
    move-exception v3

    if-eqz p1, :cond_2e

    :try_start_2b
    invoke-static {p2, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2e
    throw v3
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2f} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 94
    :catch_2f
    move-exception p1

    .line 95
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_40

    .line 92
    :catch_3b
    move-exception p1

    .line 93
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    nop

    .line 98
    :goto_40
    return-object v2

    .line 85
    :catch_41
    move-exception p1

    .line 86
    const-string p2, "Problem converting cert"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    return-object v2
.end method

.method public synthetic lambda$onCertificateApprovalsChanged$0$CertificateMonitor(I)V
    .registers 2

    .line 127
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onCertificateApprovalsChanged(I)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public uninstallCaCerts(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 8

    .line 102
    const-string v0, "DevicePolicyManager"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_36
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_28

    const/4 v1, 0x0

    .line 103
    const/4 v2, 0x0

    :goto_a
    :try_start_a
    array-length v3, p2

    if-ge v2, v3, :cond_19

    .line 104
    invoke-virtual {p1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1f

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 106
    :cond_19
    if-eqz p1, :cond_3c

    :try_start_1b
    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_36
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_28

    goto :goto_3c

    .line 102
    :catchall_1f
    move-exception p2

    :try_start_20
    throw p2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    .line 106
    :catchall_21
    move-exception v1

    if-eqz p1, :cond_27

    :try_start_24
    invoke-static {p2, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_27
    throw v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_28} :catch_36
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_28} :catch_28

    .line 108
    :catch_28
    move-exception p1

    .line 109
    const-string p2, "CaCertUninstaller: "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3d

    .line 106
    :catch_36
    move-exception p1

    .line 107
    const-string p2, "from CaCertUninstaller: "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :cond_3c
    :goto_3c
    nop

    .line 112
    :goto_3d
    return-void
.end method
