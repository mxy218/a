.class public Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;
.super Ljava/lang/Object;
.source "EmitterMessageBuilder.java"


# static fields
.field protected static elementSeparate:Ljava/lang/String;

.field protected static fieldSeparate:Ljava/lang/String;

.field protected static mapSeparate:Ljava/lang/String;

.field protected static newlineSeparate:Ljava/lang/String;

.field protected static separate00:[B

.field protected static separate01:[B

.field protected static separate02:[B

.field protected static separate03:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 14
    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->separate00:[B

    new-array v1, v0, [B

    aput-byte v0, v1, v2

    .line 15
    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->separate01:[B

    new-array v1, v0, [B

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    .line 16
    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->separate02:[B

    new-array v0, v0, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    .line 17
    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->separate03:[B

    .line 18
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->separate01:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->separate02:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->elementSeparate:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->separate03:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->mapSeparate:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/String;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->newlineSeparate:Ljava/lang/String;

    return-void
.end method

.method protected static booleanToInt(Z)I
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static buildEvents(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "03"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    .line 29
    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->parcelOneEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 31
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static parcelApp(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Ljava/lang/StringBuilder;)V
    .registers 4

    .line 172
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pkg_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 173
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    :cond_13
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pkg_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 178
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    :cond_2b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pkg_ver"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 183
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    :cond_43
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pkg_ver_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 188
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_5b

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    :cond_5b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sdk_ver"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 193
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    :cond_73
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object p0

    const-string v0, "channel_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8b

    .line 198
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 199
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    :cond_8b
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected static parcelDevice(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Ljava/lang/StringBuilder;)V
    .registers 4

    .line 49
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "brand"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 50
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    :cond_13
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 55
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    :cond_2b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "product_model"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 60
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    :cond_43
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "os_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 65
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5b

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    :cond_5b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "os_version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 70
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    :cond_73
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "os"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 75
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_8b

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    :cond_8b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "flyme_ver"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 80
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a3

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    :cond_a3
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "build_mask"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 85
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_bb

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    :cond_bb
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "umid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 90
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d3

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    :cond_d3
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "imei"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_eb

    .line 95
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_eb

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    :cond_eb
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "mac_address"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_103

    .line 100
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_103

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    :cond_103
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11b

    .line 105
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_11b

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    :cond_11b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "android_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_133

    .line 110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_133

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    :cond_133
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "android_ad_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14b

    .line 115
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_14b

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    :cond_14b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "imsi1"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_163

    .line 120
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_163

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    :cond_163
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "imsi2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17b

    .line 125
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_17b

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    :cond_17b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ter_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_193

    .line 130
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_193

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    :cond_193
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sre"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1ab

    .line 135
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1ab

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    :cond_1ab
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lla"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c3

    .line 140
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1c3

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    :cond_1c3
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "root"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e5

    .line 145
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1e5

    .line 146
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->booleanToInt(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    :cond_1e5
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "flyme_uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1fd

    .line 150
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1fd

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1fd
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "country"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_215

    .line 155
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_215

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    :cond_215
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "operator"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22d

    .line 160
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_22d

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    :cond_22d
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object p0

    const-string v0, "international"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_24f

    .line 165
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_24f

    .line 166
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->booleanToInt(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    :cond_24f
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected static parcelEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Ljava/lang/StringBuilder;)V
    .registers 8

    .line 205
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "source"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 206
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    :cond_13
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 211
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 216
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    :cond_43
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "longitude"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 221
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_5b

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    :cond_5b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "latitude"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 226
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_73

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    :cond_73
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "page"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_8b

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    :cond_8b
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "launch"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 236
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a3

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    :cond_a3
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 241
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_bb

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    :cond_bb
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 246
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d3

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    :cond_d3
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12e

    .line 251
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_12e

    .line 253
    check-cast v0, Ljava/util/Map;

    .line 254
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_f5
    :goto_f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v3, :cond_105

    move v3, v1

    goto :goto_10a

    .line 258
    :cond_105
    sget-object v5, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->elementSeparate:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :goto_10a
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_119

    .line 261
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_119
    sget-object v5, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->mapSeparate:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_f5

    .line 265
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f5

    .line 269
    :cond_12e
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v3, "event_attrib"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_186

    .line 271
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_186

    .line 273
    check-cast v0, Ljava/util/Map;

    .line 274
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14d
    :goto_14d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_186

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v2, :cond_15d

    move v2, v1

    goto :goto_162

    .line 278
    :cond_15d
    sget-object v4, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->elementSeparate:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_162
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_171

    .line 281
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_171
    sget-object v4, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->mapSeparate:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14d

    .line 285
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14d

    .line 289
    :cond_186
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "terminate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19e

    .line 291
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_19e

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    :cond_19e
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b6

    .line 296
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1b6

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    :cond_1b6
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "cseq"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1ce

    .line 301
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1ce

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    :cond_1ce
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "debug"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f0

    .line 306
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1f0

    .line 307
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->booleanToInt(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    :cond_1f0
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->fieldSeparate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object p0

    const-string v0, "loc_time"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_208

    .line 311
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_208

    .line 312
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_208
    return-void
.end method

.method protected static parcelOneEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->newlineSeparate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->parcelDevice(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Ljava/lang/StringBuilder;)V

    .line 41
    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->parcelApp(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Ljava/lang/StringBuilder;)V

    .line 43
    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->parcelEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Ljava/lang/StringBuilder;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
