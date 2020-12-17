.class final Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;
.super Lcom/android/server/display/color/TintController;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NightDisplayTintController"
.end annotation


# instance fields
.field private mColorTemp:Ljava/lang/Integer;

.field private final mColorTempCoefficients:[F

.field private mIsAvailable:Ljava/lang/Boolean;

.field private final mMatrix:[F

.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 2

    .line 1081
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    .line 1083
    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    .line 1084
    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p2, "x1"  # Lcom/android/server/display/color/ColorDisplayService$1;

    .line 1081
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    return-void
.end method

.method private clampNightDisplayColorTemperature(I)I
    .registers 4
    .param p1, "colorTemperature"  # I

    .line 1219
    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    .line 1220
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 1223
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1224
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->getMinimumColorTemperature(Landroid/content/Context;)I

    move-result v0

    .line 1225
    .local v0, "minimumTemperature":I
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1226
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->getMaximumColorTemperature(Landroid/content/Context;)I

    move-result v1

    .line 1227
    .local v1, "maximumTemperature":I
    if-ge p1, v0, :cond_2c

    .line 1228
    move p1, v0

    goto :goto_2f

    .line 1229
    :cond_2c
    if-le p1, v1, :cond_2f

    .line 1230
    move p1, v1

    .line 1233
    :cond_2f
    :goto_2f
    return p1
.end method

.method private onActivated(Z)V
    .registers 4
    .param p1, "activated"  # Z

    .line 1170
    if-eqz p1, :cond_5

    const-string v0, "Turning on night display"

    goto :goto_7

    :cond_5
    const-string v0, "Turning off night display"

    :goto_7
    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2500(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1172
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2500(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onActivated(Z)V

    .line 1175
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1176
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 1179
    :cond_32
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1180
    return-void
.end method


# virtual methods
.method getColorTemperature()I
    .registers 2

    .line 1183
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    move-result v0

    goto :goto_11

    .line 1184
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v0

    .line 1183
    :goto_11
    return v0
.end method

.method getColorTemperatureSetting()I
    .registers 5

    .line 1209
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_c

    .line 1210
    return v1

    .line 1212
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1213
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1215
    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    .line 1212
    const-string/jumbo v3, "night_display_color_temperature"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 1158
    const/16 v0, 0x64

    return v0
.end method

.method public getMatrix()[F
    .registers 2

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    :goto_b
    return-object v0
.end method

.method isActivatedSetting()Z
    .registers 5

    .line 1201
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_c

    .line 1202
    return v1

    .line 1204
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1205
    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    .line 1204
    const-string/jumbo v3, "night_display_activated"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    move v1, v2

    :cond_27
    return v1
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 1163
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 1164
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 1166
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method onColorTemperatureChanged(I)V
    .registers 4
    .param p1, "temperature"  # I

    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 1197
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1198
    return-void
.end method

.method public setActivated(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "activated"  # Ljava/lang/Boolean;

    .line 1130
    if-nez p1, :cond_7

    .line 1131
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1132
    return-void

    .line 1135
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v1

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1137
    .local v0, "activationStateChanged":Z
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v1

    if-nez v1, :cond_3a

    if-eqz v0, :cond_3a

    .line 1139
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1141
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1142
    invoke-static {v3}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v3

    .line 1139
    const-string/jumbo v4, "night_display_last_activated_time"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1145
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v1

    if-nez v1, :cond_42

    if-eqz v0, :cond_70

    .line 1146
    :cond_42
    invoke-super {p0, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_69

    .line 1148
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v3}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v3

    .line 1148
    const-string/jumbo v4, "night_display_activated"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1152
    :cond_69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onActivated(Z)V

    .line 1154
    :cond_70
    return-void
.end method

.method setColorTemperature(I)Z
    .registers 5
    .param p1, "temperature"  # I

    .line 1188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;

    .line 1189
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1190
    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v1

    .line 1189
    const-string/jumbo v2, "night_display_color_temperature"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    .line 1191
    .local v0, "success":Z
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onColorTemperatureChanged(I)V

    .line 1192
    return v0
.end method

.method public setMatrix(I)V
    .registers 11
    .param p1, "cct"  # I

    .line 1104
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_f

    .line 1105
    const-string v0, "ColorDisplayService"

    const-string v1, "The display transformation matrix must be 4x4"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return-void

    .line 1109
    :cond_f
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1111
    mul-int v0, p1, p1

    int-to-float v0, v0

    .line 1112
    .local v0, "squareTemperature":F
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    aget v3, v2, v1

    mul-float/2addr v3, v0

    int-to-float v4, p1

    const/4 v5, 0x1

    aget v5, v2, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v2, v4

    add-float/2addr v3, v4

    .line 1114
    .local v3, "red":F
    const/4 v4, 0x3

    aget v4, v2, v4

    mul-float/2addr v4, v0

    int-to-float v5, p1

    const/4 v6, 0x4

    aget v6, v2, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x5

    aget v6, v2, v5

    add-float/2addr v4, v6

    .line 1116
    .local v4, "green":F
    const/4 v6, 0x6

    aget v6, v2, v6

    mul-float/2addr v6, v0

    int-to-float v7, p1

    const/4 v8, 0x7

    aget v8, v2, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/16 v7, 0x8

    aget v2, v2, v7

    add-float/2addr v6, v2

    .line 1118
    .local v6, "blue":F
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    aput v3, v2, v1

    .line 1119
    aput v4, v2, v5

    .line 1120
    const/16 v1, 0xa

    aput v6, v2, v1

    .line 1121
    return-void
.end method

.method public setUp(Landroid/content/Context;Z)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "needsLinear"  # Z

    .line 1094
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_a

    .line 1095
    const v1, 0x107004c

    goto :goto_d

    .line 1096
    :cond_a
    const v1, 0x107004d

    .line 1094
    :goto_d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "coefficients":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    const/16 v2, 0x9

    if-ge v1, v2, :cond_26

    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 1098
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1100
    .end local v1  # "i":I
    :cond_26
    return-void
.end method
