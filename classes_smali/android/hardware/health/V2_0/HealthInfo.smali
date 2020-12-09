.class public final Landroid/hardware/health/V2_0/HealthInfo;
.super Ljava/lang/Object;
.source "HealthInfo.java"


# instance fields
.field public batteryCurrentAverage:I

.field public diskStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/health/V2_0/DiskStats;",
            ">;"
        }
    .end annotation
.end field

.field public legacy:Landroid/hardware/health/V1_0/HealthInfo;

.field public storageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/health/V2_0/StorageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

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
            "Landroid/hardware/health/V2_0/HealthInfo;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 90
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 91
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 92
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 91
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 97
    new-instance v4, Landroid/hardware/health/V2_0/HealthInfo;

    invoke-direct {v4}, Landroid/hardware/health/V2_0/HealthInfo;-><init>()V

    .line 98
    mul-int/lit8 v5, v3, 0x70

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/health/V2_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 99
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 103
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
            "Landroid/hardware/health/V2_0/HealthInfo;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 149
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 150
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 151
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x70

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 152
    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 153
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/health/V2_0/HealthInfo;

    mul-int/lit8 v5, v2, 0x70

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/health/V2_0/HealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 155
    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 158
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 159
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 30
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 31
    return v0

    .line 33
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 34
    return v1

    .line 36
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/health/V2_0/HealthInfo;

    if-eq v2, v3, :cond_11

    .line 37
    return v1

    .line 39
    :cond_11
    check-cast p1, Landroid/hardware/health/V2_0/HealthInfo;

    .line 40
    iget-object v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 41
    return v1

    .line 43
    :cond_1e
    iget v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    iget v3, p1, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    if-eq v2, v3, :cond_25

    .line 44
    return v1

    .line 46
    :cond_25
    iget-object v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 47
    return v1

    .line 49
    :cond_30
    iget-object v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 50
    return v1

    .line 52
    :cond_3b
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 60
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 61
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 22

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v1, v0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    const-wide/16 v11, 0x0

    add-long v2, p3, v11

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/health/V1_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    const-wide/16 v1, 0x48

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    .line 111
    const-wide/16 v1, 0x50

    add-long v1, p3, v1

    const-wide/16 v13, 0x8

    add-long v3, v1, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    .line 112
    mul-int/lit8 v3, v15, 0x70

    int-to-long v3, v3

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v7, v1, v11

    .line 112
    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 116
    iget-object v2, v0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 117
    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_44
    if-ge v2, v15, :cond_59

    .line 118
    new-instance v3, Landroid/hardware/health/V2_0/DiskStats;

    invoke-direct {v3}, Landroid/hardware/health/V2_0/DiskStats;-><init>()V

    .line 119
    mul-int/lit8 v4, v2, 0x70

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/health/V2_0/DiskStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 120
    iget-object v4, v0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 124
    :cond_59
    const-wide/16 v1, 0x60

    add-long v1, p3, v1

    add-long/2addr v13, v1

    invoke-virtual {v10, v13, v14}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 125
    mul-int/lit8 v3, v13, 0x30

    int-to-long v3, v3

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v7, v1, v11

    const/4 v10, 0x1

    .line 125
    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 129
    iget-object v2, v0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 130
    move/from16 v2, v16

    :goto_7d
    if-ge v2, v13, :cond_92

    .line 131
    new-instance v3, Landroid/hardware/health/V2_0/StorageInfo;

    invoke-direct {v3}, Landroid/hardware/health/V2_0/StorageInfo;-><init>()V

    .line 132
    mul-int/lit8 v4, v2, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/health/V2_0/StorageInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 133
    iget-object v4, v0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 136
    :cond_92
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 81
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 82
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/health/V2_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 83
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ".legacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .batteryCurrentAverage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .diskStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .storageInfos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 20

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    invoke-virtual {v2, v1, v5, v6}, Landroid/hardware/health/V1_0/HealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 164
    const-wide/16 v5, 0x48

    add-long v5, p2, v5

    iget v2, v0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 166
    iget-object v2, v0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 167
    const-wide/16 v5, 0x50

    add-long v5, p2, v5

    const-wide/16 v7, 0x8

    add-long v9, v5, v7

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 168
    const-wide/16 v9, 0xc

    add-long v11, v5, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 169
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x70

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 170
    move v12, v13

    :goto_37
    if-ge v12, v2, :cond_4c

    .line 171
    iget-object v14, v0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/health/V2_0/DiskStats;

    mul-int/lit8 v15, v12, 0x70

    int-to-long v9, v15

    invoke-virtual {v14, v11, v9, v10}, Landroid/hardware/health/V2_0/DiskStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 170
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v9, 0xc

    goto :goto_37

    .line 173
    :cond_4c
    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 176
    iget-object v2, v0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 177
    const-wide/16 v5, 0x60

    add-long v5, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 178
    const-wide/16 v7, 0xc

    add-long v9, v5, v7

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 179
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x30

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 180
    nop

    :goto_6d
    if-ge v13, v2, :cond_80

    .line 181
    iget-object v8, v0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/health/V2_0/StorageInfo;

    mul-int/lit8 v9, v13, 0x30

    int-to-long v9, v9

    invoke-virtual {v8, v7, v9, v10}, Landroid/hardware/health/V2_0/StorageInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 180
    add-int/lit8 v13, v13, 0x1

    goto :goto_6d

    .line 183
    :cond_80
    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 185
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 139
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/health/V2_0/HealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 142
    return-void
.end method
