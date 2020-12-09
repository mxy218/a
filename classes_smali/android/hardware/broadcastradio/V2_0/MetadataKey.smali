.class public final Landroid/hardware/broadcastradio/V2_0/MetadataKey;
.super Ljava/lang/Object;
.source "MetadataKey.java"


# static fields
.field public static final ALBUM_ART:I = 0x9

.field public static final DAB_COMPONENT_NAME:I = 0xf

.field public static final DAB_COMPONENT_NAME_SHORT:I = 0x10

.field public static final DAB_ENSEMBLE_NAME:I = 0xb

.field public static final DAB_ENSEMBLE_NAME_SHORT:I = 0xc

.field public static final DAB_SERVICE_NAME:I = 0xd

.field public static final DAB_SERVICE_NAME_SHORT:I = 0xe

.field public static final PROGRAM_NAME:I = 0xa

.field public static final RBDS_PTY:I = 0x3

.field public static final RDS_PS:I = 0x1

.field public static final RDS_PTY:I = 0x2

.field public static final RDS_RT:I = 0x4

.field public static final SONG_ALBUM:I = 0x7

.field public static final SONG_ARTIST:I = 0x6

.field public static final SONG_TITLE:I = 0x5

.field public static final STATION_ICON:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    nop

    .line 135
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 136
    const-string v1, "RDS_PS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    goto :goto_12

    .line 135
    :cond_11
    const/4 v2, 0x0

    .line 139
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 140
    const-string v1, "RDS_PTY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    or-int/lit8 v2, v2, 0x2

    .line 143
    :cond_1e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2a

    .line 144
    const-string v1, "RBDS_PTY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    or-int/lit8 v2, v2, 0x3

    .line 147
    :cond_2a
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_36

    .line 148
    const-string v1, "RDS_RT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    or-int/lit8 v2, v2, 0x4

    .line 151
    :cond_36
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_42

    .line 152
    const-string v1, "SONG_TITLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    or-int/lit8 v2, v2, 0x5

    .line 155
    :cond_42
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4e

    .line 156
    const-string v1, "SONG_ARTIST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    or-int/lit8 v2, v2, 0x6

    .line 159
    :cond_4e
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5a

    .line 160
    const-string v1, "SONG_ALBUM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    or-int/lit8 v2, v2, 0x7

    .line 163
    :cond_5a
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_67

    .line 164
    const-string v1, "STATION_ICON"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/lit8 v2, v2, 0x8

    .line 167
    :cond_67
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_74

    .line 168
    const-string v1, "ALBUM_ART"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    or-int/lit8 v2, v2, 0x9

    .line 171
    :cond_74
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_81

    .line 172
    const-string v1, "PROGRAM_NAME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/lit8 v2, v2, 0xa

    .line 175
    :cond_81
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_8e

    .line 176
    const-string v1, "DAB_ENSEMBLE_NAME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    or-int/lit8 v2, v2, 0xb

    .line 179
    :cond_8e
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9b

    .line 180
    const-string v1, "DAB_ENSEMBLE_NAME_SHORT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    or-int/lit8 v2, v2, 0xc

    .line 183
    :cond_9b
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_a8

    .line 184
    const-string v1, "DAB_SERVICE_NAME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit8 v2, v2, 0xd

    .line 187
    :cond_a8
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b5

    .line 188
    const-string v1, "DAB_SERVICE_NAME_SHORT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v2, v2, 0xe

    .line 191
    :cond_b5
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_c2

    .line 192
    const-string v1, "DAB_COMPONENT_NAME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v2, v2, 0xf

    .line 195
    :cond_c2
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_cf

    .line 196
    const-string v1, "DAB_COMPONENT_NAME_SHORT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/lit8 v2, v2, 0x10

    .line 199
    :cond_cf
    if-eq p0, v2, :cond_eb

    .line 200
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

    .line 202
    :cond_eb
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .line 81
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 82
    const-string p0, "RDS_PS"

    return-object p0

    .line 84
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 85
    const-string p0, "RDS_PTY"

    return-object p0

    .line 87
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 88
    const-string p0, "RBDS_PTY"

    return-object p0

    .line 90
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 91
    const-string p0, "RDS_RT"

    return-object p0

    .line 93
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 94
    const-string p0, "SONG_TITLE"

    return-object p0

    .line 96
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 97
    const-string p0, "SONG_ARTIST"

    return-object p0

    .line 99
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 100
    const-string p0, "SONG_ALBUM"

    return-object p0

    .line 102
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 103
    const-string p0, "STATION_ICON"

    return-object p0

    .line 105
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    .line 106
    const-string p0, "ALBUM_ART"

    return-object p0

    .line 108
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    .line 109
    const-string p0, "PROGRAM_NAME"

    return-object p0

    .line 111
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    .line 112
    const-string p0, "DAB_ENSEMBLE_NAME"

    return-object p0

    .line 114
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    .line 115
    const-string p0, "DAB_ENSEMBLE_NAME_SHORT"

    return-object p0

    .line 117
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    .line 118
    const-string p0, "DAB_SERVICE_NAME"

    return-object p0

    .line 120
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    .line 121
    const-string p0, "DAB_SERVICE_NAME_SHORT"

    return-object p0

    .line 123
    :cond_5b
    const/16 v0, 0xf

    if-ne p0, v0, :cond_62

    .line 124
    const-string p0, "DAB_COMPONENT_NAME"

    return-object p0

    .line 126
    :cond_62
    const/16 v0, 0x10

    if-ne p0, v0, :cond_69

    .line 127
    const-string p0, "DAB_COMPONENT_NAME_SHORT"

    return-object p0

    .line 129
    :cond_69
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
