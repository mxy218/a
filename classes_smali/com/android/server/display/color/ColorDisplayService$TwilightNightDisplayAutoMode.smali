.class final Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;
.super Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TwilightNightDisplayAutoMode"
.end annotation


# instance fields
.field private mLastActivatedTime:Ljava/time/LocalDateTime;

.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 3

    .line 1005
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V

    .line 1006
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1, v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2300(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/twilight/TwilightManager;

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 1007
    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .registers 8
    .param p1, "state"  # Lcom/android/server/twilight/TwilightState;

    .line 1010
    if-nez p1, :cond_3

    .line 1013
    return-void

    .line 1016
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    .line 1017
    .local v0, "activate":Z
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    if-eqz v1, :cond_38

    .line 1018
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 1019
    .local v1, "now":Ljava/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunrise()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1020
    .local v2, "sunrise":Ljava/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunset()Ljava/time/LocalDateTime;

    move-result-object v3

    .line 1022
    .local v3, "sunset":Ljava/time/LocalDateTime;
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1023
    invoke-virtual {v5, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_38

    .line 1024
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v0

    .line 1028
    .end local v1  # "now":Ljava/time/LocalDateTime;
    .end local v2  # "sunrise":Ljava/time/LocalDateTime;
    .end local v3  # "sunset":Ljava/time/LocalDateTime;
    :cond_38
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1029
    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v1

    if-eq v1, v0, :cond_5d

    .line 1030
    :cond_50
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1032
    :cond_5d
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .registers 3
    .param p1, "activated"  # Z

    .line 1036
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1037
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1041
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 1042
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1045
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 1046
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1050
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 1051
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1052
    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .registers 4
    .param p1, "state"  # Lcom/android/server/twilight/TwilightState;

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTwilightStateChanged: isNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    if-nez p1, :cond_f

    const/4 v1, 0x0

    goto :goto_17

    :cond_f
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 1059
    return-void
.end method
