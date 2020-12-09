.class public final Landroid/hardware/contexthub/V1_0/HubAppInfo;
.super Ljava/lang/Object;
.source "HubAppInfo.java"


# instance fields
.field public appId:J

.field public enabled:Z

.field public memUsage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/MemRange;",
            ">;"
        }
    .end annotation
.end field

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

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
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 72
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 73
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 74
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 73
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 79
    new-instance v4, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    invoke-direct {v4}, Landroid/hardware/contexthub/V1_0/HubAppInfo;-><init>()V

    .line 80
    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 81
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 85
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
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 116
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 119
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 120
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 121
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x28

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 122
    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 123
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    mul-int/lit8 v5, v2, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 125
    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 128
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 129
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 12
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 13
    return v0

    .line 15
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 16
    return v1

    .line 18
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    if-eq v2, v3, :cond_11

    .line 19
    return v1

    .line 21
    :cond_11
    check-cast p1, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 22
    iget-wide v2, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iget-wide v4, p1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 23
    return v1

    .line 25
    :cond_1c
    iget v2, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iget v3, p1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    if-eq v2, v3, :cond_23

    .line 26
    return v1

    .line 28
    :cond_23
    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 29
    return v1

    .line 31
    :cond_2e
    iget-boolean v2, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    iget-boolean p1, p1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    if-eq v2, p1, :cond_35

    .line 32
    return v1

    .line 34
    :cond_35
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    .line 42
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    .line 91
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    .line 93
    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 94
    mul-int/lit8 v5, v4, 0x10

    int-to-long v9, v5

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    .line 94
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 98
    iget-object v3, v0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 99
    const/4 v3, 0x0

    :goto_37
    if-ge v3, v4, :cond_4e

    .line 100
    new-instance v5, Landroid/hardware/contexthub/V1_0/MemRange;

    invoke-direct {v5}, Landroid/hardware/contexthub/V1_0/MemRange;-><init>()V

    .line 101
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    move-object/from16 v8, p1

    invoke-virtual {v5, v8, v2, v6, v7}, Landroid/hardware/contexthub/V1_0/MemRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
    iget-object v6, v0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 105
    :cond_4e
    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    .line 106
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 63
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 64
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 65
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ".appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", .version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v1, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", .memUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", .enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-boolean v1, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    .line 133
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-wide v4, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 134
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget v6, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 136
    iget-object v4, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 137
    const-wide/16 v5, 0x10

    add-long/2addr v5, p2

    add-long/2addr v2, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 138
    const-wide/16 v2, 0xc

    add-long/2addr v2, v5

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v3, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 139
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    nop

    :goto_2e
    if-ge v7, v4, :cond_41

    .line 141
    iget-object v3, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/V1_0/MemRange;

    mul-int/lit8 v8, v7, 0x10

    int-to-long v8, v8

    invoke-virtual {v3, v2, v8, v9}, Landroid/hardware/contexthub/V1_0/MemRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 140
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 143
    :cond_41
    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 145
    const-wide/16 v0, 0x20

    add-long/2addr p2, v0

    iget-boolean v0, p0, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 146
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 109
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 110
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 112
    return-void
.end method
