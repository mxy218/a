.class public final Landroid/hardware/broadcastradio/V2_0/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# instance fields
.field public maker:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public supportedIdentifierTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public vendorInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

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
            "Landroid/hardware/broadcastradio/V2_0/Properties;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 123
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 124
    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 125
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 124
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 130
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/Properties;

    invoke-direct {v4}, Landroid/hardware/broadcastradio/V2_0/Properties;-><init>()V

    .line 131
    mul-int/lit8 v5, v3, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/broadcastradio/V2_0/Properties;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 132
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 136
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
            "Landroid/hardware/broadcastradio/V2_0/Properties;",
            ">;)V"
        }
    .end annotation

    .line 205
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 208
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 209
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 210
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x60

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 211
    nop

    :goto_1e
    if-ge v2, v1, :cond_2f

    .line 212
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/broadcastradio/V2_0/Properties;

    mul-int/lit8 v5, v2, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/broadcastradio/V2_0/Properties;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 214
    :cond_2f
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 217
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 218
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 52
    return v0

    .line 54
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 55
    return v1

    .line 57
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/Properties;

    if-eq v2, v3, :cond_11

    .line 58
    return v1

    .line 60
    :cond_11
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/Properties;

    .line 61
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 62
    return v1

    .line 64
    :cond_1e
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 65
    return v1

    .line 67
    :cond_29
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 68
    return v1

    .line 70
    :cond_34
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 71
    return v1

    .line 73
    :cond_3f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 74
    return v1

    .line 76
    :cond_4a
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    .line 77
    return v1

    .line 79
    :cond_55
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 85
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 86
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 87
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 88
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 89
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 90
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 84
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 23

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 143
    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 144
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 143
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 148
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 150
    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 151
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 150
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 155
    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 157
    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 158
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 157
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 162
    const-wide/16 v4, 0x30

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 164
    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 165
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 164
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 170
    const-wide/16 v4, 0x40

    add-long v4, p3, v4

    const-wide/16 v6, 0x8

    add-long v8, v4, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 171
    mul-int/lit8 v9, v8, 0x4

    int-to-long v11, v9

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v4, v2

    .line 171
    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 175
    iget-object v5, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 176
    const/4 v5, 0x0

    move v9, v5

    :goto_9f
    if-ge v9, v8, :cond_b4

    .line 178
    mul-int/lit8 v10, v9, 0x4

    int-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 179
    iget-object v11, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v9, v9, 0x1

    goto :goto_9f

    .line 183
    :cond_b4
    const-wide/16 v8, 0x50

    add-long v8, p3, v8

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 184
    mul-int/lit8 v6, v4, 0x20

    int-to-long v11, v6

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    const/16 v17, 0x1

    .line 184
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 188
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 189
    nop

    :goto_d4
    if-ge v5, v4, :cond_eb

    .line 190
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    .line 191
    mul-int/lit8 v3, v5, 0x20

    int-to-long v6, v3

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v1, v6, v7}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 192
    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_d4

    .line 195
    :cond_eb
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 114
    const-wide/16 v0, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 115
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/Properties;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 116
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ".maker = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", .product = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", .version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .supportedIdentifierTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", .vendorInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 20

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 223
    const-wide/16 v4, 0x10

    add-long v4, p2, v4

    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 224
    const-wide/16 v4, 0x20

    add-long v4, p2, v4

    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 225
    const-wide/16 v4, 0x30

    add-long v4, p2, v4

    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 227
    iget-object v4, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 228
    const-wide/16 v5, 0x40

    add-long v5, p2, v5

    const-wide/16 v7, 0x8

    add-long v9, v5, v7

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 229
    const-wide/16 v9, 0xc

    add-long v11, v5, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 230
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x4

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 231
    move v12, v13

    :goto_49
    if-ge v12, v4, :cond_61

    .line 232
    mul-int/lit8 v14, v12, 0x4

    int-to-long v14, v14

    iget-object v13, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 231
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_49

    .line 234
    :cond_61
    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 237
    iget-object v4, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 238
    const-wide/16 v5, 0x50

    add-long v5, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 239
    add-long/2addr v9, v5

    const/4 v7, 0x0

    invoke-virtual {v1, v9, v10, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 240
    new-instance v8, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x20

    invoke-direct {v8, v9}, Landroid/os/HwBlob;-><init>(I)V

    .line 241
    nop

    :goto_80
    if-ge v7, v4, :cond_93

    .line 242
    iget-object v9, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    mul-int/lit8 v10, v7, 0x20

    int-to-long v10, v10

    invoke-virtual {v9, v8, v10, v11}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 241
    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    .line 244
    :cond_93
    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6, v8}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 246
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 198
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 199
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/Properties;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 201
    return-void
.end method
