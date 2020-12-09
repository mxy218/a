.class public Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreSecondaryKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager$RecoverableKeyStoreSecondaryKeyManagerProvider;
    }
.end annotation


# static fields
.field private static final BACKUP_KEY_ALIAS_PREFIX:Ljava/lang/String; = "com.android.server.backup/recoverablekeystore/"

.field private static final BACKUP_KEY_SUFFIX_LENGTH_BITS:I = 0x80

.field private static final BITS_PER_BYTE:I = 0x8


# instance fields
.field private final mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/security/SecureRandom;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 58
    iput-object p2, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;->mSecureRandom:Ljava/security/SecureRandom;

    .line 59
    return-void
.end method

.method private generateId()Ljava/lang/String;
    .registers 4

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 110
    iget-object v1, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.server.backup/recoverablekeystore/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;
    .registers 3

    .line 47
    new-instance v0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;

    .line 48
    invoke-static {p0}, Landroid/security/keystore/recovery/RecoveryController;->getInstance(Landroid/content/Context;)Landroid/security/keystore/recovery/RecoveryController;

    move-result-object p0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;-><init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/security/SecureRandom;)V

    .line 47
    return-object v0
.end method

.method static synthetic lambda$get$0(Ljava/lang/String;Ljavax/crypto/SecretKey;)Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;
    .registers 3

    .line 101
    new-instance v0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method


# virtual methods
.method public generate()Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;->generateId()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v1, v0}, Landroid/security/keystore/recovery/RecoveryController;->generateKey(Ljava/lang/String;)Ljava/security/Key;

    .line 73
    iget-object v1, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v1, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 74
    if-eqz v1, :cond_19

    .line 80
    new-instance v2, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;

    invoke-direct {v2, v0, v1}, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    return-object v2

    .line 75
    :cond_19
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 76
    const-string v0, "Generated key %s but could not get it back immediately afterwards."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/util/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v0, p1}, Landroid/security/keystore/recovery/RecoveryController;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 100
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/encryption/keys/-$$Lambda$RecoverableKeyStoreSecondaryKeyManager$e3XnfsZLX7gDR6_HV8RXEgR851s;

    invoke-direct {v1, p1}, Lcom/android/server/backup/encryption/keys/-$$Lambda$RecoverableKeyStoreSecondaryKeyManager$e3XnfsZLX7gDR6_HV8RXEgR851s;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 100
    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v0, p1}, Landroid/security/keystore/recovery/RecoveryController;->removeKey(Ljava/lang/String;)V

    .line 91
    return-void
.end method
