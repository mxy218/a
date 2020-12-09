.class public Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentData"
.end annotation


# static fields
.field public static final NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SP:I = 0x1

.field public static final TYPE_SP_WEAVER:I = 0x2

.field static final VERSION_1:B = 0x1t

.field static final VERSION_1_HEADER_SIZE:I = 0xa


# instance fields
.field final payload:[B

.field final qualityForUi:I

.field final type:I

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 678
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    const/4 v1, 0x0

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-void
.end method

.method private constructor <init>(III[B)V
    .registers 5

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 688
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 689
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    .line 690
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 691
    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .registers 9

    .line 694
    const-string v0, "LockSettingsStorage"

    if-eqz p0, :cond_58

    array-length v1, p0

    if-nez v1, :cond_8

    goto :goto_58

    .line 698
    :cond_8
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 700
    :try_start_12
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 701
    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 702
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 703
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 704
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 705
    array-length v4, p0

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    new-array v4, v4, [B

    .line 706
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {p0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    new-instance p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    return-object p0

    .line 709
    :cond_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown PersistentData version code: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_4e} :catch_4f

    return-object p0

    .line 712
    :catch_4f
    move-exception p0

    .line 713
    const-string v1, "Could not parse PersistentData"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object p0

    .line 695
    :cond_58
    :goto_58
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object p0
.end method

.method public static toBytes(III[B)[B
    .registers 7

    .line 720
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_e

    .line 721
    if-nez p3, :cond_7

    move v0, v1

    :cond_7
    const-string p0, "TYPE_NONE must have empty payload"

    invoke-static {v0, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 723
    const/4 p0, 0x0

    return-object p0

    .line 725
    :cond_e
    if-eqz p3, :cond_14

    array-length v2, p3

    if-lez v2, :cond_14

    move v0, v1

    :cond_14
    const-string v2, "empty payload must only be used with TYPE_NONE"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 728
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v2, p3

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 730
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 732
    :try_start_26
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 733
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 734
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 735
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 736
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_35} :catch_3b

    .line 739
    nop

    .line 740
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 737
    :catch_3b
    move-exception p0

    .line 738
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ByteArrayOutputStream cannot throw IOException"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
