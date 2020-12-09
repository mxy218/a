.class public final Landroid/hardware/broadcastradio/V2_0/IdentifierType;
.super Ljava/lang/Object;
.source "IdentifierType.java"


# static fields
.field public static final AMFM_FREQUENCY:I = 0x1

.field public static final DAB_ENSEMBLE:I = 0x6

.field public static final DAB_FREQUENCY:I = 0x8

.field public static final DAB_SCID:I = 0x7

.field public static final DAB_SID_EXT:I = 0x5

.field public static final DRMO_FREQUENCY:I = 0xa

.field public static final DRMO_SERVICE_ID:I = 0x9

.field public static final HD_STATION_ID_EXT:I = 0x3

.field public static final HD_STATION_NAME:I = 0x4

.field public static final INVALID:I = 0x0

.field public static final RDS_PI:I = 0x2

.field public static final SXM_CHANNEL:I = 0xd

.field public static final SXM_SERVICE_ID:I = 0xc

.field public static final VENDOR_END:I = 0x7cf

.field public static final VENDOR_START:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    nop

    .line 165
    and-int/lit16 v1, p0, 0x3e8

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_12

    .line 166
    const-string v1, "VENDOR_START"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_13

    .line 165
    :cond_12
    const/4 v2, 0x0

    .line 169
    :goto_13
    and-int/lit16 v1, p0, 0x7cf

    const/16 v3, 0x7cf

    if-ne v1, v3, :cond_20

    .line 170
    const-string v1, "VENDOR_END"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit16 v2, v2, 0x7cf

    .line 173
    :cond_20
    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_31

    .line 175
    const-string v1, "AMFM_FREQUENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    or-int/lit8 v2, v2, 0x1

    .line 178
    :cond_31
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3d

    .line 179
    const-string v1, "RDS_PI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    or-int/lit8 v2, v2, 0x2

    .line 182
    :cond_3d
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_49

    .line 183
    const-string v1, "HD_STATION_ID_EXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    or-int/lit8 v2, v2, 0x3

    .line 186
    :cond_49
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_55

    .line 187
    const-string v1, "HD_STATION_NAME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    or-int/lit8 v2, v2, 0x4

    .line 190
    :cond_55
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_61

    .line 191
    const-string v1, "DAB_SID_EXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    or-int/lit8 v2, v2, 0x5

    .line 194
    :cond_61
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_6d

    .line 195
    const-string v1, "DAB_ENSEMBLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    or-int/lit8 v2, v2, 0x6

    .line 198
    :cond_6d
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_79

    .line 199
    const-string v1, "DAB_SCID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    or-int/lit8 v2, v2, 0x7

    .line 202
    :cond_79
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_86

    .line 203
    const-string v1, "DAB_FREQUENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    or-int/lit8 v2, v2, 0x8

    .line 206
    :cond_86
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_93

    .line 207
    const-string v1, "DRMO_SERVICE_ID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    or-int/lit8 v2, v2, 0x9

    .line 210
    :cond_93
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_a0

    .line 211
    const-string v1, "DRMO_FREQUENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    or-int/lit8 v2, v2, 0xa

    .line 214
    :cond_a0
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_ad

    .line 215
    const-string v1, "SXM_SERVICE_ID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    or-int/lit8 v2, v2, 0xc

    .line 218
    :cond_ad
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_ba

    .line 219
    const-string v1, "SXM_CHANNEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    or-int/lit8 v2, v2, 0xd

    .line 222
    :cond_ba
    if-eq p0, v2, :cond_d6

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_d6
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 114
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_7

    .line 115
    const-string p0, "VENDOR_START"

    return-object p0

    .line 117
    :cond_7
    const/16 v0, 0x7cf

    if-ne p0, v0, :cond_e

    .line 118
    const-string p0, "VENDOR_END"

    return-object p0

    .line 120
    :cond_e
    if-nez p0, :cond_13

    .line 121
    const-string p0, "INVALID"

    return-object p0

    .line 123
    :cond_13
    const/4 v0, 0x1

    if-ne p0, v0, :cond_19

    .line 124
    const-string p0, "AMFM_FREQUENCY"

    return-object p0

    .line 126
    :cond_19
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1f

    .line 127
    const-string p0, "RDS_PI"

    return-object p0

    .line 129
    :cond_1f
    const/4 v0, 0x3

    if-ne p0, v0, :cond_25

    .line 130
    const-string p0, "HD_STATION_ID_EXT"

    return-object p0

    .line 132
    :cond_25
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2b

    .line 133
    const-string p0, "HD_STATION_NAME"

    return-object p0

    .line 135
    :cond_2b
    const/4 v0, 0x5

    if-ne p0, v0, :cond_31

    .line 136
    const-string p0, "DAB_SID_EXT"

    return-object p0

    .line 138
    :cond_31
    const/4 v0, 0x6

    if-ne p0, v0, :cond_37

    .line 139
    const-string p0, "DAB_ENSEMBLE"

    return-object p0

    .line 141
    :cond_37
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3d

    .line 142
    const-string p0, "DAB_SCID"

    return-object p0

    .line 144
    :cond_3d
    const/16 v0, 0x8

    if-ne p0, v0, :cond_44

    .line 145
    const-string p0, "DAB_FREQUENCY"

    return-object p0

    .line 147
    :cond_44
    const/16 v0, 0x9

    if-ne p0, v0, :cond_4b

    .line 148
    const-string p0, "DRMO_SERVICE_ID"

    return-object p0

    .line 150
    :cond_4b
    const/16 v0, 0xa

    if-ne p0, v0, :cond_52

    .line 151
    const-string p0, "DRMO_FREQUENCY"

    return-object p0

    .line 153
    :cond_52
    const/16 v0, 0xc

    if-ne p0, v0, :cond_59

    .line 154
    const-string p0, "SXM_SERVICE_ID"

    return-object p0

    .line 156
    :cond_59
    const/16 v0, 0xd

    if-ne p0, v0, :cond_60

    .line 157
    const-string p0, "SXM_CHANNEL"

    return-object p0

    .line 159
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method