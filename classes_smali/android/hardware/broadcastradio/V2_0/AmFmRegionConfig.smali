.class public final Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;
.super Ljava/lang/Object;
.source "AmFmRegionConfig.java"


# instance fields
.field public fmDeemphasis:B

.field public fmRds:B

.field public ranges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 81
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 82
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 83
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 82
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 88
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    invoke-direct {v4}, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;-><init>()V

    .line 89
    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 90
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 94
    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;",
            ">;)V"
        }
    .end annotation

    .line 124
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 127
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 128
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 129
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 131
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    mul-int/lit8 v5, v2, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 133
    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 136
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 137
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 27
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 28
    return v0

    .line 30
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 31
    return v1

    .line 33
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    if-eq v2, v3, :cond_11

    .line 34
    return v1

    .line 36
    :cond_11
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 37
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 38
    return v1

    .line 40
    :cond_1e
    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-byte v3, p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 41
    return v1

    .line 43
    :cond_31
    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-byte p1, p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    .line 44
    return v1

    .line 46
    :cond_44
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    .line 52
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    .line 53
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    .line 54
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 101
    mul-int/lit8 v7, v6, 0x10

    int-to-long v9, v7

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v4, v2

    .line 101
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 105
    iget-object v3, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v3, 0x0

    :goto_25
    if-ge v3, v6, :cond_3c

    .line 107
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    invoke-direct {v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;-><init>()V

    .line 108
    mul-int/lit8 v5, v3, 0x10

    int-to-long v7, v5

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v2, v7, v8}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    iget-object v7, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 112
    :cond_3c
    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    .line 113
    const-wide/16 v2, 0x11

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    .line 114
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 72
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 73
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ".ranges = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .fmDeemphasis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/Deemphasis;->dumpBitfield(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", .fmRds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/Rds;->dumpBitfield(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    .line 142
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 143
    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 144
    const-wide/16 v5, 0xc

    add-long/2addr v5, v3

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 145
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 146
    nop

    :goto_1f
    if-ge v7, v0, :cond_32

    .line 147
    iget-object v6, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    mul-int/lit8 v8, v7, 0x10

    int-to-long v8, v8

    invoke-virtual {v6, v5, v8, v9}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 146
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 149
    :cond_32
    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 151
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 152
    const-wide/16 v0, 0x11

    add-long/2addr p2, v0

    iget-byte v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 153
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 117
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 118
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 120
    return-void
.end method
