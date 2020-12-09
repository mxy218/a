.class public final Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field private final mDestination:I

.field private final mOpcode:I

.field private final mParams:[B

.field private final mSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 45
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 46
    and-int/lit16 p1, p3, 0xff

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 47
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 48
    return-void
.end method

.method private static opcodeToString(I)Ljava/lang/String;
    .registers 3

    .line 126
    if-eqz p0, :cond_112

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_10f

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_10c

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_109

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_106

    const/16 v0, 0x99

    if-eq p0, v0, :cond_103

    const/16 v0, 0x9a

    if-eq p0, v0, :cond_100

    sparse-switch p0, :sswitch_data_116

    packed-switch p0, :pswitch_data_180

    packed-switch p0, :pswitch_data_194

    packed-switch p0, :pswitch_data_1a2

    packed-switch p0, :pswitch_data_1b4

    packed-switch p0, :pswitch_data_1be

    packed-switch p0, :pswitch_data_1d2

    .line 270
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Opcode: %02X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 252
    :pswitch_40  #0xa4
    const-string p0, "Request Short Audio Descriptor"

    return-object p0

    .line 250
    :pswitch_43  #0xa3
    const-string p0, "Report Short Audio Descriptor"

    return-object p0

    .line 248
    :pswitch_46  #0xa2
    const-string p0, "Set External Timer"

    return-object p0

    .line 246
    :pswitch_49  #0xa1
    const-string p0, "Clear External Timer"

    return-object p0

    .line 244
    :pswitch_4c  #0xa0
    const-string p0, "Vendor Command With Id"

    return-object p0

    .line 242
    :pswitch_4f  #0x9f
    const-string p0, "Get Cec Version"

    return-object p0

    .line 240
    :pswitch_52  #0x9e
    const-string p0, "Cec Version"

    return-object p0

    .line 238
    :pswitch_55  #0x9d
    const-string p0, "InActive Source"

    return-object p0

    .line 208
    :pswitch_58  #0x87
    const-string p0, "Device Vendor Id"

    return-object p0

    .line 206
    :pswitch_5b  #0x86
    const-string p0, "Set Stream Path"

    return-object p0

    .line 204
    :pswitch_5e  #0x85
    const-string p0, "Request Active Source"

    return-object p0

    .line 202
    :pswitch_61  #0x84
    const-string p0, "Report Physical Address"

    return-object p0

    .line 200
    :pswitch_64  #0x83
    const-string p0, "Give Physical Address"

    return-object p0

    .line 198
    :pswitch_67  #0x82
    const-string p0, "Active Source"

    return-object p0

    .line 196
    :pswitch_6a  #0x81
    const-string p0, "Routing Information"

    return-object p0

    .line 194
    :pswitch_6d  #0x80
    const-string p0, "Routing Change"

    return-object p0

    .line 186
    :pswitch_70  #0x72
    const-string p0, "Set System Audio Mode"

    return-object p0

    .line 184
    :pswitch_73  #0x71
    const-string p0, "Give Audio Status"

    return-object p0

    .line 182
    :pswitch_76  #0x70
    const-string p0, "System Audio Mode Request"

    return-object p0

    .line 176
    :pswitch_79  #0x47
    const-string p0, "Set Osd Name"

    return-object p0

    .line 174
    :pswitch_7c  #0x46
    const-string p0, "Give Osd Name"

    return-object p0

    .line 172
    :pswitch_7f  #0x45
    const-string p0, "User Control Release"

    return-object p0

    .line 170
    :pswitch_82  #0x44
    const-string p0, "User Control Pressed"

    return-object p0

    .line 168
    :pswitch_85  #0x43
    const-string p0, "Timer Cleared Status"

    return-object p0

    .line 166
    :pswitch_88  #0x42
    const-string p0, "Deck Control"

    return-object p0

    .line 164
    :pswitch_8b  #0x41
    const-string p0, "Play"

    return-object p0

    .line 162
    :pswitch_8e  #0x36
    const-string p0, "Standby"

    return-object p0

    .line 160
    :pswitch_91  #0x35
    const-string p0, "Timer Status"

    return-object p0

    .line 158
    :pswitch_94  #0x34
    const-string p0, "Set Analog Timer"

    return-object p0

    .line 156
    :pswitch_97  #0x33
    const-string p0, "Clear Analog Timer"

    return-object p0

    .line 154
    :pswitch_9a  #0x32
    const-string p0, "Set Menu Language"

    return-object p0

    .line 144
    :pswitch_9d  #0xb
    const-string p0, "Record Off"

    return-object p0

    .line 142
    :pswitch_a0  #0xa
    const-string p0, "Record Status"

    return-object p0

    .line 140
    :pswitch_a3  #0x9
    const-string p0, "Record On"

    return-object p0

    .line 138
    :pswitch_a6  #0x8
    const-string p0, "Give Tuner Device Status"

    return-object p0

    .line 136
    :pswitch_a9  #0x7
    const-string p0, "Tuner Device Status"

    return-object p0

    .line 134
    :pswitch_ac  #0x6
    const-string p0, "Tuner Step Decrement"

    return-object p0

    .line 132
    :pswitch_af  #0x5
    const-string p0, "Tuner Step Increment"

    return-object p0

    .line 130
    :pswitch_b2  #0x4
    const-string p0, "Image View On"

    return-object p0

    .line 268
    :sswitch_b5
    const-string p0, "Abort"

    return-object p0

    .line 266
    :sswitch_b8
    const-string p0, "Cdc Message"

    return-object p0

    .line 264
    :sswitch_bb
    const-string p0, "Terminate ARC"

    return-object p0

    .line 262
    :sswitch_be
    const-string p0, "Request ARC Termination"

    return-object p0

    .line 260
    :sswitch_c1
    const-string p0, "Request ARC Initiation"

    return-object p0

    .line 258
    :sswitch_c4
    const-string p0, "Report ARC Terminated"

    return-object p0

    .line 256
    :sswitch_c7
    const-string p0, "Report ARC Initiated"

    return-object p0

    .line 254
    :sswitch_ca
    const-string p0, "Initiate ARC"

    return-object p0

    .line 232
    :sswitch_cd
    const-string p0, "Set Digital Timer"

    return-object p0

    .line 230
    :sswitch_d0
    const-string p0, "Select Digital Service"

    return-object p0

    .line 228
    :sswitch_d3
    const-string p0, "Select Analog Service"

    return-object p0

    .line 226
    :sswitch_d6
    const-string p0, "Get Menu Language"

    return-object p0

    .line 224
    :sswitch_d9
    const-string p0, "Report Power Status"

    return-object p0

    .line 222
    :sswitch_dc
    const-string p0, "Give Device Power Status"

    return-object p0

    .line 220
    :sswitch_df
    const-string p0, "Menu Status"

    return-object p0

    .line 218
    :sswitch_e2
    const-string p0, "Menu Request"

    return-object p0

    .line 216
    :sswitch_e5
    const-string p0, "Give Device Vendor Id"

    return-object p0

    .line 214
    :sswitch_e8
    const-string p0, "Vendor Remote Button Up"

    return-object p0

    .line 212
    :sswitch_eb
    const-string p0, "Vendor Remote Button Down"

    return-object p0

    .line 210
    :sswitch_ee
    const-string p0, "Vendor Command"

    return-object p0

    .line 188
    :sswitch_f1
    const-string p0, "Report Audio Status"

    return-object p0

    .line 180
    :sswitch_f4
    const-string p0, "Set Timer Program Title"

    return-object p0

    .line 178
    :sswitch_f7
    const-string p0, "Set Osd String"

    return-object p0

    .line 148
    :sswitch_fa
    const-string p0, "Record Tv Screen"

    return-object p0

    .line 146
    :sswitch_fd
    const-string p0, "Text View On"

    return-object p0

    .line 236
    :cond_100
    const-string p0, "Set Audio Rate"

    return-object p0

    .line 234
    :cond_103
    const-string p0, "Clear Digital Timer"

    return-object p0

    .line 192
    :cond_106
    const-string p0, "System Audio Mode Status"

    return-object p0

    .line 190
    :cond_109
    const-string p0, "Give System Audio Mode Status"

    return-object p0

    .line 152
    :cond_10c
    const-string p0, "Deck Status"

    return-object p0

    .line 150
    :cond_10f
    const-string p0, "Give Deck Status"

    return-object p0

    .line 128
    :cond_112
    :sswitch_112
    const-string p0, "Feature Abort"

    return-object p0

    nop

    :sswitch_data_116
    .sparse-switch
        0x0 -> :sswitch_112
        0xd -> :sswitch_fd
        0xf -> :sswitch_fa
        0x64 -> :sswitch_f7
        0x67 -> :sswitch_f4
        0x7a -> :sswitch_f1
        0x89 -> :sswitch_ee
        0x8a -> :sswitch_eb
        0x8b -> :sswitch_e8
        0x8c -> :sswitch_e5
        0x8d -> :sswitch_e2
        0x8e -> :sswitch_df
        0x8f -> :sswitch_dc
        0x90 -> :sswitch_d9
        0x91 -> :sswitch_d6
        0x92 -> :sswitch_d3
        0x93 -> :sswitch_d0
        0x97 -> :sswitch_cd
        0xc0 -> :sswitch_ca
        0xc1 -> :sswitch_c7
        0xc2 -> :sswitch_c4
        0xc3 -> :sswitch_c1
        0xc4 -> :sswitch_be
        0xc5 -> :sswitch_bb
        0xf8 -> :sswitch_b8
        0xff -> :sswitch_b5
    .end sparse-switch

    :pswitch_data_180
    .packed-switch 0x4
        :pswitch_b2  #00000004
        :pswitch_af  #00000005
        :pswitch_ac  #00000006
        :pswitch_a9  #00000007
        :pswitch_a6  #00000008
        :pswitch_a3  #00000009
        :pswitch_a0  #0000000a
        :pswitch_9d  #0000000b
    .end packed-switch

    :pswitch_data_194
    .packed-switch 0x32
        :pswitch_9a  #00000032
        :pswitch_97  #00000033
        :pswitch_94  #00000034
        :pswitch_91  #00000035
        :pswitch_8e  #00000036
    .end packed-switch

    :pswitch_data_1a2
    .packed-switch 0x41
        :pswitch_8b  #00000041
        :pswitch_88  #00000042
        :pswitch_85  #00000043
        :pswitch_82  #00000044
        :pswitch_7f  #00000045
        :pswitch_7c  #00000046
        :pswitch_79  #00000047
    .end packed-switch

    :pswitch_data_1b4
    .packed-switch 0x70
        :pswitch_76  #00000070
        :pswitch_73  #00000071
        :pswitch_70  #00000072
    .end packed-switch

    :pswitch_data_1be
    .packed-switch 0x80
        :pswitch_6d  #00000080
        :pswitch_6a  #00000081
        :pswitch_67  #00000082
        :pswitch_64  #00000083
        :pswitch_61  #00000084
        :pswitch_5e  #00000085
        :pswitch_5b  #00000086
        :pswitch_58  #00000087
    .end packed-switch

    :pswitch_data_1d2
    .packed-switch 0x9d
        :pswitch_55  #0000009d
        :pswitch_52  #0000009e
        :pswitch_4f  #0000009f
        :pswitch_4c  #000000a0
        :pswitch_49  #000000a1
        :pswitch_46  #000000a2
        :pswitch_43  #000000a3
        :pswitch_40  #000000a4
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 52
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 53
    check-cast p1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 54
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-ne v0, v2, :cond_2d

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 55
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    if-ne v0, v2, :cond_2d

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 56
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v0, v2, :cond_2d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 57
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    nop

    .line 54
    :goto_2e
    return v1

    .line 59
    :cond_2f
    return v1
.end method

.method public getDestination()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return v0
.end method

.method public getOpcode()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return v0
.end method

.method public getParams()[B
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object v0
.end method

.method public getSource()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 68
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 64
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 116
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 115
    const-string v2, "<%s> %X%X:%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v1

    if-lez v2, :cond_54

    .line 118
    array-length v2, v1

    move v5, v3

    :goto_3c
    if-ge v5, v2, :cond_54

    aget-byte v6, v1, v5

    .line 119
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v7, v3

    const-string v6, ":%02X"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 122
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
