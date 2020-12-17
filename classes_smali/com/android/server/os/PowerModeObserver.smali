.class Lcom/android/server/os/PowerModeObserver;
.super Landroid/database/ContentObserver;
.source "PowerModeObserver.java"


# static fields
.field static final POWER_MODE_BENCHMARK:I = 0x3

.field static final POWER_MODE_BENCHMARK_EXT:I = 0x4

.field static final POWER_MODE_HIGH:I = 0x0

.field static final POWER_MODE_LOW:I = 0x2

.field static final POWER_MODE_NONE:I = -0x1

.field static final POWER_MODE_NORMAL:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 35
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/os/PowerModeObserver;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/server/os/PowerModeObserver;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/os/PowerModeObserver;->onChange(ZLandroid/net/Uri;)V

    .line 43
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 10
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 47
    iget-object v0, p0, Lcom/android/server/os/PowerModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "cpu_l"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "powerMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerModeObserver.onChange: powerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/android/server/os/PowerModeObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 52
    .local v2, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v3, "data":Landroid/os/Bundle;
    const-string v4, "boost_info_configration"

    if-eqz v0, :cond_4e

    const-string v5, "PowerModeNormal"

    const/4 v6, 0x2

    if-eq v0, v1, :cond_47

    if-eq v0, v6, :cond_3e

    .line 76
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v6}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    goto :goto_58

    .line 63
    :cond_3e
    const-string v5, "PowerModeLow"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {v1}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 65
    goto :goto_58

    .line 59
    :cond_47
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v6}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 61
    goto :goto_58

    .line 55
    :cond_4e
    const-string v1, "PowerModeHigh"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/os/IntelligentThermalManager;->handleThermalChange(I)V

    .line 57
    nop

    .line 80
    :goto_58
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 81
    iget-object v1, p0, Lcom/android/server/os/PowerModeObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method
