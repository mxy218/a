.class Lcom/android/server/broadcastradio/hal2/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;,
        Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.convert"

.field private static final metadataKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    .line 316
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const/4 v4, 0x0

    const-string v5, "android.hardware.radio.metadata.RDS_PS"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.RDS_PTY"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.RDS_RT"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.TITLE"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.ARTIST"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.ALBUM"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.ICON"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.ART"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static amfmConfigToBands(Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 23

    .line 169
    move-object/from16 v0, p0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0

    .line 171
    :cond_8
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    const/4 v1, 0x0

    .line 177
    iget-object v0, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    .line 178
    iget v4, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-static {v4}, Lcom/android/server/broadcastradio/hal2/Utils;->getBand(I)Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    move-result-object v4

    .line 179
    sget-object v5, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    if-ne v4, v5, :cond_4e

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown frequency band at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "kHz"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BcRadio2Srv.convert"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_1a

    .line 183
    :cond_4e
    sget-object v5, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    if-ne v4, v5, :cond_69

    .line 184
    new-instance v14, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    const/4 v5, 0x1

    iget v6, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v7, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v8, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v3, v14

    move v4, v1

    invoke-direct/range {v3 .. v13}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 191
    :cond_69
    new-instance v4, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    const/16 v17, 0x0

    iget v5, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v6, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v3, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    const/16 v21, 0x1

    const/16 v16, 0x0

    move-object v15, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v3

    invoke-direct/range {v15 .. v21}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_84
    goto :goto_1a

    .line 200
    :cond_85
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public static announcementFromHal(Landroid/hardware/broadcastradio/V2_0/Announcement;)Landroid/hardware/radio/Announcement;
    .registers 4

    .line 414
    new-instance v0, Landroid/hardware/radio/Announcement;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 415
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramSelector;

    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    .line 417
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/radio/Announcement;-><init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V

    .line 414
    return-object v0
.end method

.method private static dabConfigFromHal(Ljava/util/List;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/broadcastradio/V2_0/DabTableEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 205
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$5i7ED5vyX8wi_iS2sa2DsapHYc0;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$5i7ED5vyX8wi_iS2sa2DsapHYc0;

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static identifierTypeToProgramType(I)I
    .registers 2

    .line 117
    packed-switch p0, :pswitch_data_18

    .line 137
    :pswitch_3  #0x4, 0xb
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_16

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_16

    .line 139
    return p0

    .line 135
    :pswitch_c  #0xc, 0xd
    const/4 p0, 0x7

    return p0

    .line 132
    :pswitch_e  #0x9, 0xa
    const/4 p0, 0x6

    return p0

    .line 129
    :pswitch_10  #0x5, 0x6, 0x7, 0x8
    const/4 p0, 0x5

    return p0

    .line 124
    :pswitch_12  #0x3
    const/4 p0, 0x4

    return p0

    .line 121
    :pswitch_14  #0x1, 0x2
    const/4 p0, 0x2

    return p0

    .line 141
    :cond_16
    const/4 p0, 0x0

    return p0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_14  #00000002
        :pswitch_12  #00000003
        :pswitch_3  #00000004
        :pswitch_10  #00000005
        :pswitch_10  #00000006
        :pswitch_10  #00000007
        :pswitch_10  #00000008
        :pswitch_e  #00000009
        :pswitch_e  #0000000a
        :pswitch_3  #0000000b
        :pswitch_c  #0000000c
        :pswitch_c  #0000000d
    .end packed-switch
.end method

.method private static identifierTypesToProgramTypes([I)[I
    .registers 6

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 148
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_32

    aget v3, p0, v2

    .line 149
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert;->identifierTypeToProgramType(I)I

    move-result v3

    .line 151
    if-nez v3, :cond_12

    goto :goto_2f

    .line 153
    :cond_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    .line 156
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_24
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f

    .line 160
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 164
    :cond_32
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method private static isEmpty(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Z
    .registers 7

    .line 280
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    iget v0, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 281
    :cond_8
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    iget-wide v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_13

    return v1

    .line 282
    :cond_13
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_1c

    return v1

    .line 283
    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$dabConfigFromHal$0(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/String;
    .registers 1

    .line 206
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$dabConfigFromHal$1(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/Integer;
    .registers 1

    .line 206
    iget p0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$programFilterToHal$4(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2

    .line 395
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierToHal(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$programInfoFromHal$3(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 1

    .line 373
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method static synthetic lambda$programListChunkFromHal$5(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 1

    .line 404
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$programListChunkFromHal$6(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 1

    .line 406
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method static synthetic lambda$programSelectorFromHal$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 1

    .line 292
    new-array p0, p0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method static listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 422
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 423
    :cond_4
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    .line 424
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static metadataFromHal(Ljava/util/ArrayList;)Landroid/hardware/radio/RadioMetadata;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/Metadata;",
            ">;)",
            "Landroid/hardware/radio/RadioMetadata;"
        }
    .end annotation

    .line 351
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Builder;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    .line 353
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/Metadata;

    .line 354
    sget-object v2, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    iget v3, v1, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 355
    if-nez v2, :cond_42

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored unknown metadata entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/MetadataKey;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BcRadio2Srv.convert"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    goto :goto_9

    .line 359
    :cond_42
    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->access$100(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    move-result-object v3

    sget-object v4, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    if-ne v3, v4, :cond_54

    .line 360
    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->access$200(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/hardware/broadcastradio/V2_0/Metadata;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_5e

    .line 364
    :cond_54
    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->access$200(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Landroid/hardware/broadcastradio/V2_0/Metadata;->intValue:J

    long-to-int v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 366
    :goto_5e
    goto :goto_9

    .line 368
    :cond_5f
    invoke-virtual {v0}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    move-result-object p0

    return-object p0
.end method

.method static programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    .registers 5

    .line 389
    if-nez p0, :cond_7

    new-instance p0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {p0}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    .line 391
    :cond_7
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    .line 393
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/-$$Lambda$A5EcwDaVFNoKb_4sV0_1Yu9f7d4;

    invoke-direct {v3, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$A5EcwDaVFNoKb_4sV0_1Yu9f7d4;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 394
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$4vXI6RX0Vlx-WE_lYnJTBSNvM-M;

    invoke-direct {v2, v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$4vXI6RX0Vlx-WE_lYnJTBSNvM-M;-><init>(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 396
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 397
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 399
    return-object v0
.end method

.method static programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 5

    .line 262
    iget v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 263
    :cond_6
    new-instance v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    iget-wide v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    return-object v0
.end method

.method static programIdentifierToHal(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;
    .registers 2

    .line 255
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 256
    invoke-static {v0, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierToHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    .line 257
    return-object v0
.end method

.method static programIdentifierToHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 4

    .line 249
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    iput v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 250
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 251
    return-void
.end method

.method static programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 11

    .line 372
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;

    .line 373
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 374
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    .line 376
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 377
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/radio/ProgramSelector;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 378
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 379
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    iget v6, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    iget v7, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 383
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->metadataFromHal(Ljava/util/ArrayList;)Landroid/hardware/radio/RadioMetadata;

    move-result-object v8

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 384
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;)V

    .line 376
    return-object v0
.end method

.method static programListChunkFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Landroid/hardware/radio/ProgramList$Chunk;
    .registers 5

    .line 403
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;

    .line 404
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 405
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$u-leEnQPvLcMEC_-sDr7j1Ka-T0;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$u-leEnQPvLcMEC_-sDr7j1Ka-T0;

    .line 406
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 407
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 409
    new-instance v2, Landroid/hardware/radio/ProgramList$Chunk;

    iget-boolean v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    iget-boolean p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method

.method static programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .registers 5

    .line 288
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->isEmpty(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 290
    :cond_8
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$LWyJkMwbnlAczPrMYjWRbiucHI4;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$LWyJkMwbnlAczPrMYjWRbiucHI4;

    .line 291
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;

    .line 292
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 294
    new-instance v2, Landroid/hardware/radio/ProgramSelector;

    iget-object v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    iget v3, v3, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 295
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert;->identifierTypeToProgramType(I)I

    move-result v3

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 296
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    .line 294
    return-object v2
.end method

.method static programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .registers 4

    .line 268
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 271
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierToHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    .line 272
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Wd4_5eHLstX9rw-52AhlvWR6dfo;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Wd4_5eHLstX9rw-52AhlvWR6dfo;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$pxxBeAmtGFx0TmOA-6MMwqs_fi0;

    invoke-direct {v2, v1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$pxxBeAmtGFx0TmOA-6MMwqs_fi0;-><init>(Ljava/util/ArrayList;)V

    .line 273
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 275
    return-object v0
.end method

.method static propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/hardware/broadcastradio/V2_0/Properties;",
            "Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;",
            "Ljava/util/List<",
            "Landroid/hardware/broadcastradio/V2_0/DabTableEntry;",
            ">;)",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v2, p0

    move-object/from16 v3, p1

    .line 212
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 216
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    move-object/from16 v16, v1

    .line 217
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->identifierTypesToProgramTypes([I)[I

    move-result-object v15

    .line 219
    new-instance v19, Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-object/from16 v1, v19

    iget-object v5, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    iget-object v7, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 238
    invoke-static/range {p3 .. p3}, Lcom/android/server/broadcastradio/hal2/Convert;->amfmConfigToBands(Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v13

    .line 242
    invoke-static/range {p4 .. p4}, Lcom/android/server/broadcastradio/hal2/Convert;->dabConfigFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v17

    iget-object v0, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 243
    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v18

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v18}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    .line 219
    return-object v19
.end method

.method static throwOnError(Ljava/lang/String;I)V
    .registers 5

    .line 59
    packed-switch p1, :pswitch_data_c2

    .line 75
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": unknown error ("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 73
    :pswitch_27  #0x6
    new-instance p1, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": TIMEOUT"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 71
    :pswitch_43  #0x5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": NOT_SUPPORTED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :pswitch_5a  #0x4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": INVALID_STATE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :pswitch_71  #0x3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": INVALID_ARGUMENTS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :pswitch_88  #0x2
    new-instance p1, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": INTERNAL_ERROR"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 63
    :pswitch_a4  #0x1
    new-instance p1, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": UNKNOWN_ERROR"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 61
    :pswitch_c0  #0x0
    return-void

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_c0  #00000000
        :pswitch_a4  #00000001
        :pswitch_88  #00000002
        :pswitch_71  #00000003
        :pswitch_5a  #00000004
        :pswitch_43  #00000005
        :pswitch_27  #00000006
    .end packed-switch
.end method

.method static vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 103
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 105
    iget-object v2, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v2, :cond_25

    goto :goto_2d

    .line 109
    :cond_25
    iget-object v2, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    iget-object v1, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    goto :goto_10

    .line 106
    :cond_2d
    :goto_2d
    const-string v1, "BcRadio2Srv.convert"

    const-string v2, "VendorKeyValue contains null pointers"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    goto :goto_10

    .line 112
    :cond_35
    return-object v0
.end method

.method static vendorInfoToHal(Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;"
        }
    .end annotation

    .line 82
    if-nez p0, :cond_8

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 84
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 89
    iget-object v1, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v1, :cond_43

    iget-object v1, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v1, :cond_3f

    goto :goto_43

    .line 93
    :cond_3f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_15

    .line 90
    :cond_43
    :goto_43
    const-string v1, "BcRadio2Srv.convert"

    const-string v2, "VendorKeyValue contains null pointers"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_15

    .line 96
    :cond_4b
    return-object v0
.end method
