.class public Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoverableKeyStoreMgr"

.field private static mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;


# instance fields
.field private final mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

.field private final mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

.field private final mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

.field private final mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

.field private final mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

.field private final mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field private final mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 163
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 164
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 165
    iput-object p6, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 166
    iput-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 167
    iput-object p7, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 168
    iput-object p8, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 169
    iput-object p9, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 170
    iput-object p10, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 172
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->verifyKnownUsers()V

    .line 174
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->newInstance(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_24} :catch_26

    .line 178
    nop

    .line 179
    return-void

    .line 175
    :catch_26
    move-exception p1

    .line 176
    const-string p2, "RecoverableKeyStoreMgr"

    const-string p3, "AES keygen algorithm not available. AOSP must support this."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x16

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method private checkRecoverKeyStorePermission()V
    .registers 4

    .line 968
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have RecoverKeyStore permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    const-string v2, "android.permission.RECOVER_KEYSTORE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 972
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 973
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->registerRecoveryAgent(II)V

    .line 974
    return-void
.end method

.method private decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 830
    const-string v0, "Failed to decrypt recovery key "

    const-string v1, "RecoverableKeyStoreMgr"

    .line 831
    const/16 v2, 0x16

    const/16 v3, 0x1a

    :try_start_8
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getKeyClaimant()[B

    move-result-object v4

    .line 832
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getVaultParams()[B

    move-result-object v5

    .line 830
    invoke-static {v4, v5, p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptRecoveryClaimResponse([B[B[B)[B

    move-result-object p2
    :try_end_14
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_14} :catch_91
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_8 .. :try_end_14} :catch_72
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_14} :catch_67

    .line 845
    nop

    .line 848
    :try_start_15
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getLskfHash()[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptRecoveryKey([B[B)[B

    move-result-object p1
    :try_end_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_15 .. :try_end_1d} :catch_48
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_15 .. :try_end_1d} :catch_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1d} :catch_1e

    return-object p1

    .line 857
    :catch_1e
    move-exception p1

    .line 859
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 853
    :catch_29
    move-exception p1

    .line 854
    const-string p2, "Got AEADBadTagException during decrypting recovery key"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    new-instance p2, Landroid/os/ServiceSpecificException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {p1}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 849
    :catch_48
    move-exception p1

    .line 850
    const-string p2, "Got InvalidKeyException during decrypting recovery key"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    new-instance p2, Landroid/os/ServiceSpecificException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 842
    :catch_67
    move-exception p1

    .line 844
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 838
    :catch_72
    move-exception p1

    .line 839
    const-string p2, "Got AEADBadTagException during decrypting recovery claim response"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    new-instance p2, Landroid/os/ServiceSpecificException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {p1}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 834
    :catch_91
    move-exception p1

    .line 835
    const-string p2, "Got InvalidKeyException during decrypting recovery claim response"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    new-instance p2, Landroid/os/ServiceSpecificException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method private getAlias(IILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 661
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getGrantAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .registers 15

    const-class v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    if-nez v1, :cond_55

    .line 114
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->newInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_59

    .line 118
    :try_start_b
    invoke-static {p0, v4}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v9

    .line 119
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInstance(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    move-result-object v10
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_13} :catch_4e
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_13} :catch_41
    .catchall {:try_start_b .. :try_end_13} :catchall_59

    .line 125
    nop

    .line 128
    :try_start_14
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->newInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    move-result-object v7

    .line 129
    nop

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 129
    invoke-static {p1, v7, v4, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    move-result-object v12

    .line 134
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-direct {v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;-><init>()V

    .line 138
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v8, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-direct {v8}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;-><init>()V

    new-instance v11, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v11}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V

    sput-object p1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    goto :goto_55

    .line 123
    :catch_41
    move-exception p0

    .line 124
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 v1, 0x16

    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 120
    :catch_4e
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 146
    :cond_55
    :goto_55
    sget-object p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    :try_end_57
    .catchall {:try_start_14 .. :try_end_57} :catchall_59

    monitor-exit v0

    return-object p0

    .line 112
    :catchall_59
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 642
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 643
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 644
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, p1, p2, v2, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 645
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "Import %s -> %s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecoverableKeyStoreMgr"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    goto :goto_11

    .line 649
    :cond_46
    return-object v0
.end method

.method private publicKeysMatch(Ljava/security/PublicKey;[B)Z
    .registers 4

    .line 977
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object p1

    .line 978
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method private recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 872
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x1a

    const-string v4, "RecoverableKeyStoreMgr"

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 873
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    move-result-object v5

    .line 874
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    move-result-object v6

    .line 875
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getMetadata()[B

    move-result-object v2

    .line 878
    :try_start_25
    invoke-static {p1, v6, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptApplicationKey([B[B[B)[B

    move-result-object v2

    .line 880
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_2c} :catch_7b
    .catch Ljava/security/InvalidKeyException; {:try_start_25 .. :try_end_2c} :catch_43
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 894
    goto :goto_42

    .line 890
    :catch_2d
    move-exception v2

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got AEADBadTagException during decrypting application key with alias: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    :goto_42
    goto :goto_9

    .line 885
    :catch_43
    move-exception p1

    .line 886
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got InvalidKeyException during decrypting application key with alias: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 888
    new-instance p2, Landroid/os/ServiceSpecificException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to recover key with alias \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 881
    :catch_7b
    move-exception p1

    .line 882
    const-string p2, "Missing SecureBox algorithm. AOSP required to support this."

    invoke-static {v4, p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 v0, 0x16

    .line 884
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 896
    :cond_8d
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a5

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9a

    goto :goto_a5

    .line 897
    :cond_9a
    const-string p1, "Failed to recover any of the application keys."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-direct {p2, v3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 901
    :cond_a5
    :goto_a5
    return-object v0
.end method


# virtual methods
.method public closeSession(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 669
    const-string v0, "invalid session"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(ILjava/lang/String;)V

    .line 671
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 714
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 716
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 720
    const/16 v8, 0x16

    :try_start_12
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v2
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_18} :catch_50
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_18} :catch_45
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_12 .. :try_end_18} :catch_45
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_45
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_12 .. :try_end_18} :catch_38

    .line 728
    nop

    .line 731
    :try_start_19
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move v3, v7

    move v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)[B

    move-result-object p2

    .line 733
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v1, v7, v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 734
    invoke-direct {p0, v7, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_2c} :catch_2d
    .catch Ljava/security/InvalidKeyException; {:try_start_19 .. :try_end_2c} :catch_2d
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_19 .. :try_end_2c} :catch_2d

    return-object p1

    .line 735
    :catch_2d
    move-exception p1

    .line 736
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v8, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 726
    :catch_38
    move-exception p1

    .line 727
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 v0, 0x17

    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 724
    :catch_45
    move-exception p1

    .line 725
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v8, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 721
    :catch_50
    move-exception p1

    .line 723
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 819
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 821
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 822
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_10

    .line 346
    return-object v0

    .line 344
    :cond_10
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v0
.end method

.method public getRecoverySecretTypes()[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 465
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 465
    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 415
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getStatusForAllKeys(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 774
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v0, "keyBytes is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_61

    .line 784
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 785
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 789
    const/16 v9, 0x16

    :try_start_1c
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v3
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_22} :catch_5a
    .catch Ljava/security/KeyStoreException; {:try_start_1c .. :try_end_22} :catch_4f
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1c .. :try_end_22} :catch_4f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_4f
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_1c .. :try_end_22} :catch_42

    .line 797
    nop

    .line 801
    :try_start_23
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move v4, v1

    move v5, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B[B)V

    .line 805
    iget-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {p3, v1, v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 806
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catch Ljava/security/KeyStoreException; {:try_start_23 .. :try_end_36} :catch_37
    .catch Ljava/security/InvalidKeyException; {:try_start_23 .. :try_end_36} :catch_37
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_23 .. :try_end_36} :catch_37

    return-object p1

    .line 807
    :catch_37
    move-exception p1

    .line 808
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v9, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 795
    :catch_42
    move-exception p1

    .line 796
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x17

    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 793
    :catch_4f
    move-exception p1

    .line 794
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v9, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 790
    :catch_5a
    move-exception p1

    .line 792
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 777
    :cond_61
    const-string p1, "RecoverableKeyStoreMgr"

    const-string p2, "The given key for import doesn\'t have the required length 256"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x1b

    const-string p3, "The given key does not contain 256 bits."

    invoke-direct {p1, p2, p3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method initRecoveryService(Ljava/lang/String;[B)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 189
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 192
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 193
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v1, v4}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isValidRootCertificateAlias(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x1c

    if-eqz v1, :cond_18e

    .line 200
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v9, "RecoverableKeyStoreMgr"

    if-nez v1, :cond_46

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root of trust for recovery agent + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is assigned for the first time to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 204
    :cond_46
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Root of trust for recovery agent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is changed to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_70
    :goto_70
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, v7, v8, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setActiveRootOfTrust(IILjava/lang/String;)J

    move-result-wide v5

    .line 209
    const-wide/16 v10, 0x0

    cmp-long v1, v5, v10

    const/16 v12, 0x16

    if-ltz v1, :cond_186

    .line 216
    const/16 v13, 0x19

    :try_start_80
    invoke-static/range {p2 .. p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;

    move-result-object v1
    :try_end_84
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_80 .. :try_end_84} :catch_162

    .line 221
    nop

    .line 224
    invoke-virtual {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getSerial()J

    move-result-wide v5

    .line 225
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v7, v8, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServiceCertSerial(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 226
    if-eqz v3, :cond_bc

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v14, v5

    if-ltz v14, :cond_bc

    iget-object v14, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 227
    invoke-virtual {v14, v4}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_bc

    .line 228
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_af

    .line 229
    const-string v0, "The cert file serial number is the same, so skip updating."

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 231
    :cond_af
    const-string v0, "The cert file serial number is older than the one in database."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 237
    :cond_bc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating the certificate with the new serial number "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 242
    invoke-virtual {v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 244
    :try_start_d6
    const-string v14, "Getting and validating a random endpoint certificate"

    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getRandomEndpointCert(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    move-result-object v1
    :try_end_df
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_d6 .. :try_end_df} :catch_152

    .line 249
    nop

    .line 253
    :try_start_e0
    const-string v2, "Saving the randomly chosen endpoint certificate to database"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v7, v8, v4, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J

    move-result-wide v1

    .line 256
    cmp-long v1, v1, v10

    if-lez v1, :cond_135

    .line 257
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    move v2, v7

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertSerial(IILjava/lang/String;J)J

    move-result-wide v1

    .line 259
    cmp-long v1, v1, v10

    if-ltz v1, :cond_12d

    .line 266
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_10f

    .line 267
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v2, 0x1

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 268
    const-string v1, "This is a certificate change. Snapshot must be updated"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    .line 270
    :cond_10f
    const-string v1, "This is a certificate change. Snapshot didn\'t exist"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_114
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 273
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setCounterId(IIJ)J

    move-result-wide v0

    .line 274
    cmp-long v0, v0, v10

    if-gez v0, :cond_137

    .line 275
    const-string v0, "Failed to set the counter id in the local DB."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    .line 263
    :cond_12d
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "Failed to set the certificate serial number in the local DB."

    invoke-direct {v0, v12, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 277
    :cond_135
    if-ltz v1, :cond_13a

    :cond_137
    :goto_137
    nop

    .line 284
    nop

    .line 285
    return-void

    .line 278
    :cond_13a
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "Failed to set the certificate path in the local DB."

    invoke-direct {v0, v12, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_142
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_e0 .. :try_end_142} :catch_142

    .line 281
    :catch_142
    move-exception v0

    .line 282
    const-string v1, "Failed to encode CertPath"

    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 246
    :catch_152
    move-exception v0

    .line 247
    const-string v1, "Invalid endpoint cert"

    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 217
    :catch_162
    move-exception v0

    move-object v1, v0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse the input as a cert file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Landroid/os/ServiceSpecificException;

    invoke-virtual {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 210
    :cond_186
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "Failed to set the root of trust in the local DB."

    invoke-direct {v0, v12, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 195
    :cond_18e
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "Invalid root certificate alias"

    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    const-string v0, "RecoverableKeyStoreMgr"

    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 303
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 304
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    const-string/jumbo v1, "recoveryServiceCertFile is null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v1, "recoveryServiceSigFile is null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :try_start_17
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    move-result-object v1
    :try_end_1b
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_17 .. :try_end_1b} :catch_5b

    .line 315
    nop

    .line 317
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 318
    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 320
    :try_start_22
    invoke-virtual {v1, v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->verifyFileSignature(Ljava/security/cert/X509Certificate;[B)V
    :try_end_25
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_22 .. :try_end_25} :catch_2a

    .line 326
    nop

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryService(Ljava/lang/String;[B)V

    .line 329
    return-void

    .line 321
    :catch_2a
    move-exception p1

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The signature over the cert file is invalid. Cert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Sig: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 322
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x1c

    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 311
    :catch_5b
    move-exception p1

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse the sig file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x19

    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public lockScreenSecretAvailable(I[BI)V
    .registers 14

    .line 917
    const-string v0, "RecoverableKeyStoreMgr"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    const/4 v9, 0x0

    move v6, p3

    move v7, p1

    move-object v8, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZ)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_17} :catch_26
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_17} :catch_1f
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_2c

    .line 930
    :catch_18
    move-exception p1

    .line 931
    const-string p2, "Impossible - insecure user, but user just entered lock screen"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 928
    :catch_1f
    move-exception p1

    .line 929
    const-string p2, "Key store error encountered during recoverable key sync"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 926
    :catch_26
    move-exception p1

    .line 927
    const-string p2, "Should never happen - algorithm unavailable for KeySync"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    :goto_2c
    nop

    .line 933
    :goto_2d
    return-void
.end method

.method public lockScreenSecretChanged(I[BI)V
    .registers 14

    .line 949
    const-string v0, "RecoverableKeyStoreMgr"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    const/4 v9, 0x1

    move v6, p3

    move v7, p1

    move-object v8, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZ)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_17} :catch_26
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_17} :catch_1f
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_2c

    .line 962
    :catch_18
    move-exception p1

    .line 963
    const-string p2, "InsecureUserException during lock screen secret update"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 960
    :catch_1f
    move-exception p1

    .line 961
    const-string p2, "Key store error encountered during recoverable key sync"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 958
    :catch_26
    move-exception p1

    .line 959
    const-string p2, "Should never happen - algorithm unavailable for KeySync"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    :goto_2c
    nop

    .line 965
    :goto_2d
    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 607
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 609
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->get(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    move-result-object v2

    .line 610
    if-eqz v2, :cond_40

    .line 619
    :try_start_13
    invoke-direct {p0, v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B

    move-result-object p1

    .line 620
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 622
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_1f
    .catch Ljava/security/KeyStoreException; {:try_start_13 .. :try_end_1f} :catch_2a
    .catchall {:try_start_13 .. :try_end_1f} :catchall_28

    .line 626
    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 627
    iget-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {p2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    .line 622
    return-object p1

    .line 626
    :catchall_28
    move-exception p1

    goto :goto_37

    .line 623
    :catch_2a
    move-exception p1

    .line 624
    :try_start_2b
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x16

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    .line 626
    :goto_37
    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 627
    iget-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {p2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    throw p1

    .line 611
    :cond_40
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x18

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 614
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    .line 612
    const-string p1, "Application uid=%d does not have pending session \'%s\'"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 675
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 677
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 679
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeKey(ILjava/lang/String;)Z

    move-result v2

    .line 680
    if-eqz v2, :cond_23

    .line 681
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 682
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V

    .line 684
    :cond_23
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 427
    const-string/jumbo v0, "secretTypes is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 431
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v2

    .line 432
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    const-string v4, "RecoverableKeyStoreMgr"

    if-eqz v3, :cond_25

    .line 433
    const-string p1, "Not updating secret types - same as old value."

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 437
    :cond_25
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoverySecretTypes(II[I)J

    move-result-wide v5

    .line 438
    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-ltz p1, :cond_59

    .line 443
    array-length p1, v2

    if-nez p1, :cond_3a

    .line 444
    const-string p1, "Initialized secret types."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 448
    :cond_3a
    const-string p1, "Updated secret types. Snapshot pending."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 450
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 451
    const-string p1, "Updated secret types. Snapshot must be updated"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 453
    :cond_53
    const-string p1, "Updated secret types. Snapshot didn\'t exist"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_58
    return-void

    .line 439
    :cond_59
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 v0, 0x16

    const-string v1, "Database error trying to set secret types."

    invoke-direct {p1, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 396
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryStatus(ILjava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    .line 398
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1a

    .line 403
    return-void

    .line 399
    :cond_1a
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x16

    const-string v0, "Failed to set the key recovery status in the local DB."

    invoke-direct {p1, p2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public setServerParams([B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 362
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 365
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getServerParams(II)[B

    move-result-object v2

    .line 367
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    const-string v4, "RecoverableKeyStoreMgr"

    if-eqz v3, :cond_1f

    .line 368
    const-string p1, "Not updating server params - same as old value."

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 372
    :cond_1f
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setServerParams(II[B)J

    move-result-wide v5

    .line 373
    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-ltz p1, :cond_4d

    .line 378
    if-nez v2, :cond_33

    .line 379
    const-string p1, "Initialized server params."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void

    .line 383
    :cond_33
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 384
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 385
    const-string p1, "Updated server params. Snapshot must be updated"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 387
    :cond_47
    const-string p1, "Updated server params. Snapshot didn\'t exist"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_4c
    return-void

    .line 374
    :cond_4d
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 v0, 0x16

    const-string v1, "Database failure trying to set server params."

    invoke-direct {p1, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 352
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->setSnapshotListener(ILandroid/app/PendingIntent;)V

    .line 354
    return-void
.end method

.method startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 494
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_89

    .line 501
    const/16 v1, 0x19

    :try_start_10
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->deserializePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2
    :try_end_14
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_10 .. :try_end_14} :catch_7e

    .line 504
    nop

    .line 508
    invoke-direct {p0, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->publicKeysMatch(Ljava/security/PublicKey;[B)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 513
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->generateKeyClaimant()[B

    move-result-object v2

    .line 514
    const/4 v3, 0x0

    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-virtual {p5}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getSecret()[B

    move-result-object p5

    .line 515
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    invoke-direct {v4, p1, p5, v2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;-><init>(Ljava/lang/String;[B[B[B)V

    invoke-virtual {v3, v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->add(ILcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)V

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received VaultParams for recovery: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecoverableKeyStoreMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :try_start_4e
    invoke-static {p5}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->calculateThmKfHash([B)[B

    move-result-object p1

    .line 522
    invoke-static {p2, p3, p4, p1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->encryptRecoveryClaim(Ljava/security/PublicKey;[B[B[B[B)[B

    move-result-object p1
    :try_end_56
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4e .. :try_end_56} :catch_62
    .catch Ljava/security/InvalidKeyException; {:try_start_4e .. :try_end_56} :catch_57

    return-object p1

    .line 531
    :catch_57
    move-exception p1

    .line 532
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 528
    :catch_62
    move-exception p1

    .line 529
    const-string p2, "SecureBox algorithm missing. AOSP must support this."

    invoke-static {v0, p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x16

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 509
    :cond_74
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x1c

    const-string p3, "The public keys given in verifierPublicKey and vaultParams do not match."

    invoke-direct {p1, p2, p3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 502
    :catch_7e
    move-exception p1

    .line 503
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 495
    :cond_89
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Only a single KeyChainProtectionParams is supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    const-string v0, "RecoverableKeyStoreMgr"

    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 557
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 558
    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 559
    const-string v1, "invalid session"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string/jumbo v1, "verifierCertPath is null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string/jumbo v1, "vaultParams is null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string/jumbo v1, "vaultChallenge is null"

    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string/jumbo v1, "secrets is null"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const/16 v1, 0x19

    :try_start_2a
    invoke-virtual {p3}, Landroid/security/keystore/recovery/RecoveryCertPath;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p3
    :try_end_2e
    .catch Ljava/security/cert/CertificateException; {:try_start_2a .. :try_end_2e} :catch_75

    .line 569
    nop

    .line 572
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 573
    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 572
    invoke-static {p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    :try_end_38
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_2f .. :try_end_38} :catch_63

    .line 577
    nop

    .line 579
    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/Certificate;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 580
    if-eqz v4, :cond_58

    .line 586
    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B

    move-result-object p1

    return-object p1

    .line 581
    :cond_58
    const-string p1, "Failed to encode verifierPublicKey"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-direct {p2, v1, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 574
    :catch_63
    move-exception p1

    .line 575
    const-string p2, "Failed to validate the given cert path"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x1c

    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 567
    :catch_75
    move-exception p1

    .line 568
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
.end method
