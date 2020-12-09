.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .registers 4

    .line 1096
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 1099
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0093

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1101
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0094

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1103
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0090

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1105
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0092

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1107
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0091

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1109
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .registers 9

    .line 1116
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1117
    invoke-static {}, Lcom/android/server/BatteryService;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateLightsLocked: mHealthInfo is null; skipping"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    return-void

    .line 1122
    :cond_13
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Lorg/lineageos/internal/notification/LineageBatteryLights;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1127
    return-void

    .line 1129
    :cond_1c
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Lorg/lineageos/internal/notification/LineageBatteryLights;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LineageBatteryLights;->isSupported()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1130
    return-void

    .line 1133
    :cond_29
    new-instance v0, Lorg/lineageos/internal/notification/LedValues;

    iget v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/lineageos/internal/notification/LedValues;-><init>(III)V

    .line 1134
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Lorg/lineageos/internal/notification/LineageBatteryLights;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    .line 1135
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v4

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v5

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v6

    const/4 v7, 0x1

    if-gt v5, v6, :cond_5b

    move v3, v7

    .line 1134
    :cond_5b
    invoke-virtual {v1, v0, v2, v4, v3}, Lorg/lineageos/internal/notification/LineageBatteryLights;->calcLights(Lorg/lineageos/internal/notification/LedValues;IIZ)V

    .line 1137
    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LedValues;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1138
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_9d

    .line 1139
    :cond_6a
    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LedValues;->isPulsed()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1140
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LedValues;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setModes(I)V

    .line 1141
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LedValues;->getColor()I

    move-result v2

    .line 1142
    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LedValues;->getOnMs()I

    move-result v3

    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LedValues;->getOffMs()I

    move-result v0

    .line 1141
    invoke-virtual {v1, v2, v7, v3, v0}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_9d

    .line 1144
    :cond_8b
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LedValues;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setModes(I)V

    .line 1145
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lorg/lineageos/internal/notification/LedValues;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 1147
    :goto_9d
    return-void
.end method
