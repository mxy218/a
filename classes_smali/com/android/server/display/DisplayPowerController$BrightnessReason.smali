.class final Lcom/android/server/display/DisplayPowerController$BrightnessReason;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrightnessReason"
.end annotation


# static fields
.field static final ADJUSTMENT_AUTO:I = 0x2

.field static final ADJUSTMENT_AUTO_TEMP:I = 0x1

.field static final MODIFIER_DIMMED:I = 0x1

.field static final MODIFIER_LOW_POWER:I = 0x2

.field static final MODIFIER_MASK:I = 0x3

.field static final REASON_AUTOMATIC:I = 0x4

.field static final REASON_BOOST:I = 0x9

.field static final REASON_DOZE:I = 0x2

.field static final REASON_DOZE_DEFAULT:I = 0x3

.field static final REASON_MANUAL:I = 0x1

.field static final REASON_MAX:I = 0x9

.field static final REASON_OVERRIDE:I = 0x7

.field static final REASON_SCREEN_OFF:I = 0x5

.field static final REASON_TEMPORARY:I = 0x8

.field static final REASON_UNKNOWN:I = 0x0

.field static final REASON_VR:I = 0x6


# instance fields
.field public modifier:I

.field public reason:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 2015
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V
    .registers 3

    .line 2015
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method

.method private reasonToString(I)Ljava/lang/String;
    .registers 2

    .line 2112
    packed-switch p1, :pswitch_data_28

    .line 2122
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2121
    :pswitch_8  #0x9
    const-string p1, "boost"

    return-object p1

    .line 2120
    :pswitch_b  #0x8
    const-string/jumbo p1, "temporary"

    return-object p1

    .line 2119
    :pswitch_f  #0x7
    const-string/jumbo p1, "override"

    return-object p1

    .line 2118
    :pswitch_13  #0x6
    const-string/jumbo p1, "vr"

    return-object p1

    .line 2117
    :pswitch_17  #0x5
    const-string/jumbo p1, "screen_off"

    return-object p1

    .line 2116
    :pswitch_1b  #0x4
    const-string p1, "automatic"

    return-object p1

    .line 2115
    :pswitch_1e  #0x3
    const-string p1, "doze_default"

    return-object p1

    .line 2114
    :pswitch_21  #0x2
    const-string p1, "doze"

    return-object p1

    .line 2113
    :pswitch_24  #0x1
    const-string p1, "manual"

    return-object p1

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_21  #00000002
        :pswitch_1e  #00000003
        :pswitch_1b  #00000004
        :pswitch_17  #00000005
        :pswitch_13  #00000006
        :pswitch_f  #00000007
        :pswitch_b  #00000008
        :pswitch_8  #00000009
    .end packed-switch
.end method


# virtual methods
.method public addModifier(I)V
    .registers 3

    .line 2069
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setModifier(I)V

    .line 2070
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2074
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    instance-of v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    if-nez v1, :cond_8

    goto :goto_18

    .line 2077
    :cond_8
    check-cast p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 2078
    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    if-ne v1, v2, :cond_17

    iget p1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    if-ne p1, v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0

    .line 2075
    :cond_18
    :goto_18
    return v0
.end method

.method public set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V
    .registers 4

    .line 2047
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_7

    :cond_5
    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 2048
    if-nez p1, :cond_d

    goto :goto_f

    :cond_d
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setModifier(I)V

    .line 2049
    return-void
.end method

.method public setModifier(I)V
    .registers 4

    .line 2060
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_1f

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brightness modifier out of bounds: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2061
    const-string v0, "DisplayPowerController"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 2064
    :cond_1f
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    .line 2066
    :goto_21
    return-void
.end method

.method public setReason(I)V
    .registers 4

    .line 2052
    if-ltz p1, :cond_a

    const/16 v0, 0x9

    if-le p1, v0, :cond_7

    goto :goto_a

    .line 2055
    :cond_7
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    goto :goto_20

    .line 2053
    :cond_a
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brightness reason out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayPowerController"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :goto_20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2083
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 5

    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2088
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1c

    .line 2091
    const-string v1, " temp_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    :cond_1c
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_25

    .line 2094
    const-string p1, " auto_adj"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    :cond_25
    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_30

    .line 2097
    const-string p1, " low_pwr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    :cond_30
    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3b

    .line 2100
    const-string p1, " dim"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2102
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .line 2103
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_4f

    .line 2104
    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_54

    .line 2106
    :cond_4f
    const-string p1, " ]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    :goto_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
