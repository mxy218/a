.class abstract Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ThermalHalWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;,
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;

.field protected static final THERMAL_HAL_DEATH_COOKIE:I = 0x15ec


# instance fields
.field protected mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

.field protected final mHalLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 592
    const-class v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract connectToHal()Z
.end method

.method protected abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method protected abstract getCurrentCoolingDevices(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getCurrentTemperatures(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end method

.method protected resendCurrentTemperatures()V
    .registers 7

    .line 624
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v2

    .line 626
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 627
    nop

    :goto_d
    if-ge v1, v3, :cond_1d

    .line 628
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Temperature;

    invoke-interface {v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 630
    :cond_1d
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method protected setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 610
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 611
    return-void
.end method
