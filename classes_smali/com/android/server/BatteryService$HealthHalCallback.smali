.class final Lcom/android/server/BatteryService$HealthHalCallback;
.super Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;
.source "BatteryService.java"

# interfaces
.implements Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthHalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1150
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3

    .line 1150
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 3

    .line 1153
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_0/HealthInfo;)V

    .line 1154
    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .registers 6

    .line 1158
    if-nez p2, :cond_3

    return-void

    .line 1160
    :cond_3
    const-string p3, "HealthUnregisterCallback"

    invoke-static {p3}, Lcom/android/server/BatteryService;->access$1500(Ljava/lang/String;)V

    .line 1162
    if-eqz p1, :cond_51

    .line 1163
    :try_start_a
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p1

    .line 1164
    if-eqz p1, :cond_51

    .line 1165
    invoke-static {}, Lcom/android/server/BatteryService;->access$1100()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "health: cannot unregister previous callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-static {p1}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1165
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2c} :catch_2f
    .catchall {:try_start_a .. :try_end_2c} :catchall_2d

    goto :goto_51

    .line 1173
    :catchall_2d
    move-exception p1

    goto :goto_4d

    .line 1169
    :catch_2f
    move-exception p1

    .line 1170
    :try_start_30
    invoke-static {}, Lcom/android/server/BatteryService;->access$1100()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1170
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_2d

    goto :goto_51

    .line 1173
    :goto_4d
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    throw p1

    :cond_51
    :goto_51
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    .line 1174
    nop

    .line 1176
    const-string p1, "HealthRegisterCallback"

    invoke-static {p1}, Lcom/android/server/BatteryService;->access$1500(Ljava/lang/String;)V

    .line 1178
    :try_start_5a
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p1

    .line 1179
    if-eqz p1, :cond_80

    .line 1180
    invoke-static {}, Lcom/android/server/BatteryService;->access$1100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "health: cannot register callback: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_7c} :catch_89
    .catchall {:try_start_5a .. :try_end_7c} :catchall_87

    .line 1190
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    .line 1181
    return-void

    .line 1185
    :cond_80
    :try_start_80
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_83} :catch_89
    .catchall {:try_start_80 .. :try_end_83} :catchall_87

    .line 1190
    :goto_83
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    .line 1191
    goto :goto_a7

    .line 1190
    :catchall_87
    move-exception p1

    goto :goto_a8

    .line 1186
    :catch_89
    move-exception p1

    .line 1187
    :try_start_8a
    invoke-static {}, Lcom/android/server/BatteryService;->access$1100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "health: cannot register callback (transaction error): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1187
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_8a .. :try_end_a6} :catchall_87

    goto :goto_83

    .line 1192
    :goto_a7
    return-void

    .line 1190
    :goto_a8
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    throw p1
.end method
