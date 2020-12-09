.class public Lcom/android/server/locksettings/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    }
.end annotation


# static fields
.field public static final DEFAULT_HANDLE:J = 0x0L

.field private static final DEFAULT_PASSWORD:[B

.field protected static final HEX_ARRAY:[B

.field private static final INVALID_WEAVER_SLOT:I = -0x1

.field private static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final PASSWORD_SALT_LENGTH:I = 0x10

.field private static final PASSWORD_SCRYPT_N:I = 0xb

.field private static final PASSWORD_SCRYPT_P:I = 0x1

.field private static final PASSWORD_SCRYPT_R:I = 0x3

.field private static final PASSWORD_TOKEN_LENGTH:I = 0x20

.field private static final PERSONALISATION_CONTEXT:[B

.field private static final PERSONALISATION_SECDISCARDABLE:[B

.field private static final PERSONALISATION_WEAVER_KEY:[B

.field private static final PERSONALISATION_WEAVER_PASSWORD:[B

.field private static final PERSONALISATION_WEAVER_TOKEN:[B

.field private static final PERSONALIZATION_AUTHSECRET_KEY:[B

.field private static final PERSONALIZATION_E0:[B

.field private static final PERSONALIZATION_FBE_KEY:[B

.field private static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field private static final PERSONALIZATION_PASSWORD_HASH:[B

.field private static final PERSONALIZATION_SP_GK_AUTH:[B

.field private static final PERSONALIZATION_SP_SPLIT:[B

.field private static final PERSONALIZATION_USER_GK_AUTH:[B

.field private static final SECDISCARDABLE_LENGTH:I = 0x4000

.field private static final SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field private static final SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field private static final SP_E0_NAME:Ljava/lang/String; = "e0"

.field private static final SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field private static final SP_P1_NAME:Ljava/lang/String; = "p1"

.field private static final SYNTHETIC_PASSWORD_LENGTH:B = 0x20t

.field private static final SYNTHETIC_PASSWORD_PASSWORD_BASED:B = 0x0t

.field private static final SYNTHETIC_PASSWORD_TOKEN_BASED:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION_V1:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION_V2:B = 0x2t

.field private static final SYNTHETIC_PASSWORD_VERSION_V3:B = 0x3t

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordManager"

.field private static final WEAVER_SLOT_NAME:Ljava/lang/String; = "weaver"

.field private static final WEAVER_VERSION:B = 0x1t


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

.field private mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

.field private mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

.field private tokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 102
    const-string v0, "default-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 123
    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    .line 124
    const-string v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 125
    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 126
    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 127
    const-string v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 128
    const-string v0, "authsecret-hal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 129
    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 130
    const-string/jumbo v0, "pw-hash"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 131
    const-string v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 132
    const-string/jumbo v0, "weaver-pwd"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    .line 133
    const-string/jumbo v0, "weaver-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    .line 134
    const-string/jumbo v0, "weaver-token"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    .line 135
    nop

    .line 136
    const-string v0, "android-synthetic-password-personalization-context"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    .line 1217
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V
    .registers 6

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 299
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 300
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 301
    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 302
    iput-object p4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 303
    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method static synthetic access$200([B)[B
    .registers 1

    .line 91
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()[B
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method static synthetic access$400()[B
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method static synthetic access$500()[B
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    return-object v0
.end method

.method static synthetic access$600()[B
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    return-object v0
.end method

.method static synthetic access$700()[B
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method static synthetic access$800()[B
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method private static bytesToHex([B)[B
    .registers 7

    .line 1219
    if-nez p0, :cond_a

    .line 1220
    const-string/jumbo p0, "null"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 1222
    :cond_a
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1223
    const/4 v1, 0x0

    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_2c

    .line 1224
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 1225
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    ushr-int/lit8 v5, v2, 0x4

    aget-byte v5, v4, v5

    aput-byte v5, v0, v3

    .line 1226
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    .line 1223
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1228
    :cond_2c
    return-object v0
.end method

.method private computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .registers 10

    .line 1175
    iget-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v1, 0x1

    shl-int v3, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v4, v1, v0

    iget-byte p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v5, v1, p2

    const/16 v6, 0x20

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt([B[BIIII)[B

    move-result-object p1

    return-object p1
.end method

.method private createSecdiscardable(JI)[B
    .registers 5

    .line 1107
    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v0

    .line 1108
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1109
    return-object v0
.end method

.method private createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V
    .registers 19

    .line 831
    move v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 832
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->computeP0()[B

    move-result-object v2

    move-object v5, v2

    goto :goto_13

    .line 834
    :cond_a
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1100(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object v5, v2

    .line 836
    :goto_13
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v6, p5

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v2

    .line 837
    array-length v3, v2

    add-int/2addr v3, v1

    add-int/2addr v3, v1

    new-array v6, v3, [B

    .line 843
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1200(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v7, 0x0

    if-ne v3, v5, :cond_30

    .line 844
    aput-byte v5, v6, v7

    goto :goto_32

    .line 846
    :cond_30
    aput-byte v4, v6, v7

    .line 848
    :goto_32
    aput-byte v0, v6, v1

    .line 849
    array-length v0, v2

    invoke-static {v2, v7, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    const-string/jumbo v5, "spblob"

    move-object v4, p0

    move-wide v7, p1

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 851
    return-void
.end method

.method private destroyState(Ljava/lang/String;JI)V
    .registers 6

    .line 1133
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    .line 1134
    return-void
.end method

.method private destroySyntheticPassword(JI)V
    .registers 5

    .line 1081
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1082
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 1083
    const-string/jumbo v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1084
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 1086
    :cond_19
    return-void
.end method

.method private destroyWeaverSlot(JI)V
    .registers 7

    .line 562
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    .line 563
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 564
    const/4 p1, -0x1

    if-eq v0, p1, :cond_64

    .line 565
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object p1

    .line 566
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, " for user "

    const-string v1, "SyntheticPasswordManager"

    if-nez p1, :cond_4a

    .line 567
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroy weaver slot "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 p1, 0x0

    :try_start_3a
    invoke-direct {p0, v0, p1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    .line 570
    iget-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotDeleted(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_49

    .line 571
    :catch_43
    move-exception p1

    .line 572
    const-string p2, "Failed to destroy slot"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :goto_49
    goto :goto_64

    .line 575
    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip destroying reused weaver slot "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_64
    :goto_64
    return-void
.end method

.method private fakeUid(I)I
    .registers 3

    .line 1158
    const v0, 0x186a0

    add-int/2addr p1, v0

    return p1
.end method

.method protected static fromByteArrayList(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 1210
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1211
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1212
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1214
    :cond_1c
    return-object v0
.end method

.method public static generateHandle()J
    .registers 5

    .line 1149
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1152
    :goto_5
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1153
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_10

    .line 1154
    return-wide v1

    .line 1153
    :cond_10
    goto :goto_5
.end method

.method private getHandleName(J)Ljava/lang/String;
    .registers 6

    .line 1171
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "synthetic_password_"

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s%x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNextAvailableWeaverSlot()I
    .registers 4

    .line 604
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/PasswordSlotManager;->getUsedSlots()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 606
    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge v1, v2, :cond_22

    .line 607
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 608
    return v1

    .line 606
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 611
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Run out of weaver slots."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getUsedWeaverSlots()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "weaver"

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 593
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 594
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 595
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 596
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v4

    .line 597
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 598
    goto :goto_2c

    .line 599
    :cond_52
    goto :goto_16

    .line 600
    :cond_53
    return-object v1
.end method

.method private hasState(Ljava/lang/String;JI)Z
    .registers 5

    .line 1121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private declared-synchronized isWeaverAvailable()Z
    .registers 2

    monitor-enter p0

    .line 340
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-nez v0, :cond_8

    .line 342
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 344
    :cond_8
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    monitor-exit p0

    return v0

    .line 339
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$weaverVerify$1([Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 7

    .line 393
    const/4 v0, 0x0

    if-eqz p2, :cond_a7

    const/4 v1, 0x1

    const-string v2, "SyntheticPasswordManager"

    if-eq p2, v1, :cond_8d

    const/4 v1, 0x2

    if-eq p2, v1, :cond_50

    const/4 v1, 0x3

    if-eq p2, v1, :cond_31

    .line 416
    sget-object p3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object p3, p0, v0

    .line 417
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "weaver read unknown status "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", slot: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    .line 399
    :cond_31
    new-instance p2, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget p3, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {p2, p3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object p2, p0, v0

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "weaver read failed (THROTTLE), slot: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    goto :goto_b5

    .line 403
    :cond_50
    iget p2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-nez p2, :cond_6e

    .line 404
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object p2, p0, v0

    .line 405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "weaver read failed (INCORRECT_KEY), slot: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 407
    :cond_6e
    new-instance p2, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget p3, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {p2, p3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object p2, p0, v0

    .line 408
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    goto :goto_b5

    .line 412
    :cond_8d
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object p2, p0, v0

    .line 413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "weaver read failed (FAILED), slot: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    goto :goto_b5

    .line 395
    :cond_a7
    new-instance p1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object p2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 396
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fromByteArrayList(Ljava/util/ArrayList;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    aput-object p1, p0, v0

    .line 397
    nop

    .line 420
    :goto_b5
    return-void
.end method

.method private loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 6

    .line 518
    const-wide/16 v0, 0x0

    const-string v2, "e0"

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$902(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B

    .line 519
    const-string/jumbo v2, "p1"

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1002(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B

    .line 520
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$900(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object p2

    if-eqz p2, :cond_23

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1000(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object p1

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method

.method private loadSecdiscardable(JI)[B
    .registers 5

    .line 1117
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p1

    return-object p1
.end method

.method private loadState(Ljava/lang/String;JI)[B
    .registers 6

    .line 1125
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private loadSyntheticPasswordHandle(I)[B
    .registers 5

    .line 510
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p1

    return-object p1
.end method

.method private loadWeaverSlot(JI)I
    .registers 8

    .line 540
    const-string/jumbo v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p3

    .line 541
    const/4 v0, -0x1

    if-eqz p3, :cond_3e

    array-length v1, p3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_f

    goto :goto_3e

    .line 544
    :cond_f
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 545
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 546
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 547
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_39

    .line 548
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid weaver slot version of handle "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v0

    .line 551
    :cond_39
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1

    .line 542
    :cond_3e
    :goto_3e
    return v0
.end method

.method private passwordTokenToGkInput([B)[B
    .registers 5

    .line 1180
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p1

    return-object p1
.end method

.method private passwordTokenToWeaverKey([B)[B
    .registers 5

    .line 1184
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p1

    .line 1185
    array-length v0, p1

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-lt v0, v1, :cond_1c

    .line 1188
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 1186
    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "weaver key length too small"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 14

    .line 524
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$900(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v2

    const-string v1, "e0"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 525
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1000(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v7

    const-string/jumbo v6, "p1"

    const-wide/16 v8, 0x0

    move-object v5, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 526
    return-void
.end method

.method private saveSecdiscardable(J[BI)V
    .registers 11

    .line 1113
    const-string/jumbo v1, "secdis"

    move-object v0, p0

    move-object v2, p3

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1114
    return-void
.end method

.method private saveState(Ljava/lang/String;[BJI)V
    .registers 12

    .line 1129
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move v1, p5

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    .line 1130
    return-void
.end method

.method private saveSyntheticPasswordHandle([BI)V
    .registers 9

    .line 514
    const-string v1, "handle"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 515
    return-void
.end method

.method private saveWeaverSlot(IJI)V
    .registers 13

    .line 555
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 556
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 557
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 558
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string/jumbo v3, "weaver"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 559
    return-void
.end method

.method protected static secureRandom(I)[B
    .registers 2

    .line 1163
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 1164
    :catch_b
    move-exception p0

    .line 1165
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1166
    const/4 p0, 0x0

    return-object p0
.end method

.method private synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .registers 6

    .line 724
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 726
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 725
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 727
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 728
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x1

    .line 729
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object p1

    .line 728
    invoke-virtual {v0, v1, p3, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 731
    :cond_26
    iget-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3, v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 734
    :cond_2d
    :goto_2d
    return-void
.end method

.method private synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V
    .registers 7

    .line 738
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 740
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    .line 739
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 741
    iget p3, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_26

    .line 742
    iget-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v0, 0x2

    .line 743
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object p1

    .line 742
    invoke-virtual {p3, v0, p4, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 745
    :cond_26
    iget-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 748
    :cond_2d
    :goto_2d
    return-void
.end method

.method protected static toByteArrayList([B)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1202
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1203
    const/4 v1, 0x0

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 1204
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1206
    :cond_16
    return-object v0
.end method

.method private transformUnderSecdiscardable([B[B)[B
    .registers 6

    .line 1098
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p2

    .line 1100
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1101
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    return-object v0
.end method

.method private transformUnderWeaverSecret([B[B)[B
    .registers 6

    .line 1089
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p2

    .line 1091
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1092
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1094
    return-object v0
.end method

.method private unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 21

    .line 980
    move-object v0, p0

    move/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v8, p7

    const-string/jumbo v1, "spblob"

    move-wide v6, p1

    invoke-direct {p0, v1, p1, p2, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 981
    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 982
    return-object v2

    .line 984
    :cond_13
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    .line 985
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v4, v9, :cond_28

    if-eq v4, v10, :cond_28

    if-ne v4, v11, :cond_20

    goto :goto_28

    .line 988
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown blob version"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_28
    :goto_28
    aget-byte v9, v1, v11

    if-ne v9, v3, :cond_bd

    .line 994
    if-ne v4, v11, :cond_3c

    .line 995
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v9

    array-length v12, v1

    .line 996
    invoke-static {v1, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 995
    invoke-static {v9, v1, v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v1

    goto :goto_49

    .line 998
    :cond_3c
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v9

    array-length v12, v1

    .line 999
    invoke-static {v1, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 998
    invoke-virtual {p0, v9, v1, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v1

    .line 1001
    :goto_49
    const-string v9, "SyntheticPasswordManager"

    if-nez v1, :cond_62

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to decrypt SP for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-object v2

    .line 1005
    :cond_62
    new-instance v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    .line 1006
    if-ne v3, v11, :cond_88

    .line 1007
    invoke-direct {p0, v10, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v12

    if-nez v12, :cond_84

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User is not escrowable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-object v2

    .line 1011
    :cond_84
    invoke-virtual {v10, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B)V

    goto :goto_90

    .line 1013
    :cond_88
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v10, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1102(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    :goto_90
    if-ne v4, v11, :cond_bc

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade v1 SP blob for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move-object v4, v10

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 1019
    :cond_bc
    return-object v10

    .line 991
    :cond_bd
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid blob type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private weaverEnroll(I[B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v0, :cond_5d

    .line 360
    if-nez p2, :cond_12

    .line 361
    iget-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget p2, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, p2, [B

    goto :goto_19

    .line 362
    :cond_12
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v0, v1, :cond_55

    .line 365
    :goto_19
    if-nez p3, :cond_23

    .line 366
    iget-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget p3, p3, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p3

    .line 368
    :cond_23
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p2

    .line 369
    if-eqz p2, :cond_54

    .line 370
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "weaver write failed, slot: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 p1, 0x0

    return-object p1

    .line 373
    :cond_54
    return-object p3

    .line 363
    :cond_55
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid key size for weaver"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_5d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid slot for weaver"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    const/4 v0, -0x1

    if-eq p1, v0, :cond_36

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v0, :cond_36

    .line 386
    if-nez p2, :cond_12

    .line 387
    iget-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget p2, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, p2, [B

    goto :goto_19

    .line 388
    :cond_12
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v0, v1, :cond_2e

    .line 391
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 392
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;

    invoke-direct {v2, v0, p1}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;-><init>([Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    invoke-interface {v1, p1, p2, v2}, Landroid/hardware/weaver/V1_0/IWeaver;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    .line 421
    const/4 p1, 0x0

    aget-object p1, v0, p1

    return-object p1

    .line 389
    :cond_2e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid key size for weaver"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 384
    :cond_36
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid slot for weaver"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 16

    .line 795
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 796
    return v1

    .line 798
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    .line 799
    if-nez v0, :cond_27

    .line 800
    return v1

    .line 802
    :cond_27
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    const-string v3, "SyntheticPasswordManager"

    if-nez v2, :cond_35

    .line 803
    const-string p1, "User is not escrowable"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v1

    .line 806
    :cond_35
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 807
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v2

    .line 809
    :try_start_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weaver enroll token to slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_61} :catch_6b

    .line 814
    nop

    .line 815
    invoke-direct {p0, v2, p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 816
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    goto :goto_72

    .line 811
    :catch_6b
    move-exception p1

    .line 812
    const-string p2, "Failed to enroll weaver secret when activating token"

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    return v1

    .line 818
    :cond_72
    :goto_72
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 819
    const/4 v5, 0x1

    iget-object v7, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 821
    iget-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object p3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    if-eqz p3, :cond_9f

    .line 823
    iget-object p3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    invoke-interface {p3, p1, p2, p4}, Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;->onEscrowTokenActivated(JI)V

    .line 825
    :cond_9f
    const/4 p1, 0x1

    return p1
.end method

.method public clearSidForUser(I)V
    .registers 5

    .line 499
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 500
    return-void
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    move-object v6, p0

    move-object v0, p1

    move/from16 v1, p5

    move/from16 v8, p6

    const/4 v2, -0x1

    if-eqz p2, :cond_12

    move/from16 v3, p3

    if-ne v3, v2, :cond_e

    goto :goto_12

    :cond_e
    move v2, v3

    move-object/from16 v3, p2

    goto :goto_15

    .line 631
    :cond_12
    :goto_12
    nop

    .line 632
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 635
    :goto_15
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v9

    .line 636
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v2

    .line 637
    invoke-direct {p0, v3, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v3

    .line 641
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    const-wide/16 v11, 0x0

    const-string v5, "SyntheticPasswordManager"

    const/4 v7, 0x0

    if-eqz v4, :cond_7f

    .line 643
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v0

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Weaver enroll password to slot "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " for user "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v4

    invoke-direct {p0, v0, v4, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v4

    .line 646
    if-nez v4, :cond_6b

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to enroll user password under weaver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-wide v11

    .line 650
    :cond_6b
    invoke-direct {p0, v0, v9, v10, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 651
    iget-object v5, v6, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v5, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 652
    invoke-direct {p0, v2, v1, v8, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 654
    iput-object v7, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 655
    nop

    .line 656
    invoke-direct {p0, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v0

    .line 657
    move-object v7, v0

    goto :goto_c7

    .line 660
    :cond_7f
    invoke-direct {p0, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 662
    invoke-direct {p0, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v4

    .line 663
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v13

    .line 662
    invoke-interface {p1, v4, v7, v7, v13}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    if-eqz v4, :cond_ad

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-wide v11

    .line 668
    :cond_ad
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 669
    iget-object v0, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v4

    .line 670
    nop

    .line 671
    invoke-direct {p0, v9, v10, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v0

    .line 670
    invoke-direct {p0, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v0

    .line 672
    invoke-direct {p0, v2, v1, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    move-object v7, v0

    move-wide v11, v4

    .line 674
    :goto_c7
    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    const-string/jumbo v1, "pwd"

    move-object v0, p0

    move-wide v3, v9

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 676
    const/4 v3, 0x0

    move-wide v1, v9

    move-object/from16 v4, p4

    move-object v5, v7

    move-wide v6, v11

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 678
    return-wide v9
.end method

.method protected createSPBlob(Ljava/lang/String;[B[BJ)[B
    .registers 6

    .line 1141
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object p1

    return-object p1
.end method

.method public createTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 10

    .line 758
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v0

    .line 759
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 760
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    :cond_1e
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    invoke-direct {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>()V

    .line 763
    const/16 v3, 0x4000

    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v3

    .line 764
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 765
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v4, v4, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 766
    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v4, v5, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    goto :goto_49

    .line 769
    :cond_44
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 770
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 772
    :goto_49
    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 773
    iput-object p3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 775
    iget-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    return-wide v0
.end method

.method protected decryptSPBlob(Ljava/lang/String;[B[B)[B
    .registers 4

    .line 1137
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public destroyEscrowData(I)V
    .registers 5

    .line 534
    const-wide/16 v0, 0x0

    const-string v2, "e0"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 535
    const-string/jumbo v2, "p1"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 536
    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .registers 5

    .line 1075
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1076
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1077
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1078
    return-void
.end method

.method protected destroySPBlobKey(Ljava/lang/String;)V
    .registers 2

    .line 1145
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .registers 5

    .line 1070
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1071
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1072
    return-void
.end method

.method public existsHandle(JI)Z
    .registers 5

    .line 1066
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p1

    return p1
.end method

.method public getCredentialType(JI)I
    .registers 5

    .line 432
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p1

    .line 433
    if-nez p1, :cond_21

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCredentialType: encountered empty password data for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 p1, -0x1

    return p1

    .line 437
    :cond_21
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p1

    iget p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    return p1
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 781
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 783
    :cond_11
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    :try_start_0
    invoke-static {}, Landroid/hardware/weaver/V1_0/IWeaver;->getService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 309
    :catch_5
    move-exception v0

    .line 310
    const-string v0, "SyntheticPasswordManager"

    const-string v1, "Device does not support weaver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasEscrowData(I)Z
    .registers 5

    .line 529
    const-wide/16 v0, 0x0

    const-string v2, "e0"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 530
    const-string/jumbo v2, "p1"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 529
    :goto_16
    return p1
.end method

.method public hasSidForUser(I)Z
    .registers 5

    .line 503
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized initWeaverService()V
    .registers 4

    monitor-enter p0

    .line 316
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_32

    if-eqz v0, :cond_7

    .line 317
    monitor-exit p0

    return-void

    .line 320
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 321
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 322
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_27

    .line 323
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    invoke-interface {v0, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_27} :catch_28
    .catchall {:try_start_8 .. :try_end_27} :catchall_32

    .line 336
    :cond_27
    goto :goto_30

    .line 334
    :catch_28
    move-exception v0

    .line 335
    :try_start_29
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Failed to get weaver service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_32

    .line 337
    :goto_30
    monitor-exit p0

    return-void

    .line 315
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$initWeaverService$0$SyntheticPasswordManager(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 5

    .line 324
    if-nez p1, :cond_9

    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lez v0, :cond_9

    .line 325
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    goto :goto_2c

    .line 327
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get weaver config, status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " slots: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 331
    :goto_2c
    return-void
.end method

.method public migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .registers 8

    .line 707
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 708
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 709
    iget v0, p3, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v1, "pwd"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 711
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 712
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result p1

    .line 713
    if-eq p1, v2, :cond_30

    .line 714
    iget p2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    goto :goto_35

    .line 716
    :cond_30
    iget p1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 720
    :cond_35
    :goto_35
    return-void
.end method

.method native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    nop

    .line 489
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object p2

    .line 488
    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, v0, p2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_27

    .line 491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to create new SID for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 494
    :cond_27
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 495
    return-void
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[B[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 466
    if-eqz p2, :cond_37

    .line 467
    nop

    .line 468
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v1

    .line 467
    invoke-interface {p1, p4, p2, p3, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_2f

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_3a

    .line 473
    :cond_2f
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_3a

    .line 476
    :cond_37
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 478
    :goto_3a
    invoke-direct {p0, v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 479
    return-object v0
.end method

.method public removePendingToken(JI)Z
    .registers 6

    .line 787
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 788
    return v1

    .line 790
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public removeUser(I)V
    .registers 5

    .line 425
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "spblob"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 426
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 427
    invoke-direct {p0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 428
    goto :goto_d

    .line 429
    :cond_28
    return-void
.end method

.method protected scrypt([B[BIIII)[B
    .registers 14

    .line 1196
    new-instance v0, Landroid/security/Scrypt;

    invoke-direct {v0}, Landroid/security/Scrypt;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object p1

    return-object p1
.end method

.method protected sidFromPasswordHandle([B)J
    .registers 4

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    move-object/from16 v8, p0

    move-wide/from16 v6, p2

    move/from16 v9, p5

    if-nez p4, :cond_b

    .line 864
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    goto :goto_d

    .line 863
    :cond_b
    move-object/from16 v0, p4

    .line 866
    :goto_d
    new-instance v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    .line 867
    const-string/jumbo v1, "pwd"

    invoke-direct {v8, v1, v6, v7, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v11

    .line 868
    iget v1, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    iput v1, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->credentialType:I

    .line 869
    invoke-direct {v8, v0, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v12

    .line 873
    invoke-direct {v8, v6, v7, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    .line 874
    const/4 v1, -0x1

    const-string v2, "SyntheticPasswordManager"

    if-eq v0, v1, :cond_63

    .line 876
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 877
    const-string v0, "No weaver service to unwrap password based SP"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 879
    return-object v10

    .line 881
    :cond_3e
    invoke-direct {v8, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 882
    iget-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_51

    .line 883
    return-object v10

    .line 885
    :cond_51
    const-wide/16 v0, 0x0

    .line 886
    iget-object v2, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {v8, v12, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v2

    move-object/from16 v14, p1

    move-wide v11, v0

    move-object v4, v2

    goto/16 :goto_e8

    .line 888
    :cond_63
    invoke-direct {v8, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v0

    .line 889
    invoke-direct {v8, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v14

    const-wide/16 v15, 0x0

    iget-object v1, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v13, p1

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-interface/range {v13 .. v18}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .line 891
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    .line 892
    const/4 v13, 0x1

    if-nez v3, :cond_10c

    .line 893
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v3, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 894
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 895
    invoke-direct {v8, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v1

    iget-object v3, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v14, p1

    invoke-interface {v14, v1, v3, v0, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 897
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_c0

    .line 898
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 899
    invoke-virtual {v11}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    const-string/jumbo v1, "pwd"

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 900
    nop

    .line 901
    iget v0, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    if-ne v0, v13, :cond_ba

    .line 902
    const/high16 v0, 0x10000

    goto :goto_bc

    .line 903
    :cond_ba
    const/high16 v0, 0x50000

    .line 900
    :goto_bc
    invoke-direct {v8, v11, v0, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto :goto_d4

    .line 907
    :cond_c0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to re-enroll user password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_d4
    goto :goto_d7

    .line 894
    :cond_d5
    move-object/from16 v14, p1

    .line 918
    :goto_d7
    iget-object v0, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v8, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v0

    .line 919
    nop

    .line 920
    invoke-direct {v8, v6, v7, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v2

    .line 919
    invoke-direct {v8, v12, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v2

    move-wide v11, v0

    move-object v4, v2

    .line 924
    :goto_e8
    if-eqz p6, :cond_ed

    .line 925
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    .line 927
    :cond_ed
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide v5, v11

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 931
    iget-object v2, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 932
    return-object v10

    .line 911
    :cond_10c
    if-ne v3, v13, :cond_11a

    .line 912
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 913
    return-object v10

    .line 915
    :cond_11a
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 916
    return-object v10
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 943
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    .line 944
    invoke-direct {p0, p2, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v1

    .line 945
    invoke-direct {p0, p2, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v2

    .line 946
    const/4 v3, -0x1

    if-eq v2, v3, :cond_49

    .line 947
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v3

    const-string v4, "SyntheticPasswordManager"

    if-nez v3, :cond_22

    .line 948
    const-string p1, "No weaver service to unwrap token based SP"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 950
    return-object v0

    .line 952
    :cond_22
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 953
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_3f

    .line 954
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    if-nez v3, :cond_34

    goto :goto_3f

    .line 959
    :cond_34
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v2, v3, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v1

    goto :goto_49

    .line 955
    :cond_3f
    :goto_3f
    const-string p1, "Failed to retrieve weaver secret when unwrapping token"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 957
    return-object v0

    .line 962
    :cond_49
    :goto_49
    invoke-direct {p0, p4, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v6

    .line 963
    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    move-object v2, p0

    move-wide v3, p2

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 965
    iget-object p2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz p2, :cond_73

    .line 966
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 967
    iget-object p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez p1, :cond_77

    .line 970
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_77

    .line 973
    :cond_73
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 975
    :cond_77
    :goto_77
    return-object v0
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1032
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v6

    .line 1033
    if-nez v6, :cond_8

    .line 1036
    const/4 p1, 0x0

    return-object p1

    .line 1039
    :cond_8
    nop

    .line 1040
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v5

    .line 1039
    move-object v0, p1

    move v1, p5

    move-wide v2, p3

    move-object v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    .line 1042
    if-nez v1, :cond_5c

    .line 1043
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .line 1044
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1045
    nop

    .line 1046
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v0

    .line 1045
    invoke-interface {p1, p5, v6, v6, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 1047
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_45

    .line 1048
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    .line 1049
    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 1051
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1

    .line 1053
    :cond_45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to re-enroll SP handle for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1057
    :cond_5c
    const/4 p1, 0x1

    if-ne v1, p1, :cond_69

    .line 1058
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    goto :goto_6b

    .line 1060
    :cond_69
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1062
    :cond_6b
    :goto_6b
    return-object v1
.end method

.method public verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;[BILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    iget-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p3

    .line 685
    iget p4, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2d

    .line 686
    iget-object p4, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p4

    .line 687
    invoke-direct {p0, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object p2

    .line 689
    iget p3, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v1

    const-wide/16 v2, 0x0

    iget-object v4, p4, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 690
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v5

    .line 689
    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p1

    .line 691
    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1

    .line 692
    :cond_2d
    iget p1, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 p4, 0x2

    if-ne p1, p4, :cond_4b

    .line 693
    iget-object p1, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p1

    .line 694
    invoke-direct {p0, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken([BLcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object p1

    .line 695
    iget p2, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 697
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1

    .line 699
    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "persistentData.type must be TYPE_SP or TYPE_SP_WEAVER, but is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p1
.end method
