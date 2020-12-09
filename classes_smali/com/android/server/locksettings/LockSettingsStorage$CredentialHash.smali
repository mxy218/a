.class public Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialHash"
.end annotation


# static fields
.field static final VERSION_GATEKEEPER:I = 0x1

.field static final VERSION_LEGACY:I


# instance fields
.field hash:[B

.field isBaseZeroPattern:Z

.field type:I

.field version:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    .line 105
    return-void
.end method

.method synthetic constructor <init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V
    .registers 5

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-void
.end method

.method private constructor <init>([BIIZ)V
    .registers 6

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x1

    if-eq p2, v0, :cond_11

    .line 110
    if-eqz p1, :cond_9

    goto :goto_13

    .line 111
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Empty hash for CredentialHash"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_11
    if-nez p1, :cond_1c

    .line 118
    :goto_13
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 119
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    .line 120
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    .line 121
    iput-boolean p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 122
    return-void

    .line 115
    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "None type CredentialHash should not have hash"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$300([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 1

    .line 99
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object p0

    return-object p0
.end method

.method static create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 4

    .line 130
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 133
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0

    .line 131
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bad type for CredentialHash"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 3

    .line 125
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    return-object v0
.end method

.method static createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 4

    .line 137
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 5

    .line 169
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p0

    .line 171
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 172
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 173
    const/4 v3, 0x0

    .line 174
    if-lez v2, :cond_1e

    .line 175
    new-array v3, v2, [B

    .line 176
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 178
    :cond_1e
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v0, v3, v1, p0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v0

    .line 179
    :catch_24
    move-exception p0

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public toBytes()[B
    .registers 4

    .line 147
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "base zero patterns are not serializable"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 150
    :try_start_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 152
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 153
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 154
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v2, v2

    if-lez v2, :cond_32

    .line 155
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 156
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_36

    .line 158
    :cond_32
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 160
    :goto_36
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3d} :catch_3e

    return-object v0

    .line 162
    :catch_3e
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
