.class public interface abstract Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;
.super Ljava/lang/Object;
.source "ISensorsCalibrate.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "vendor.qti.hardware.sensorscalibrate@1.0::ISensorsCalibrate"

    .line 18
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 20
    instance-of v3, v2, Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;

    if-eqz v3, :cond_13

    .line 21
    check-cast v2, Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;

    return-object v2

    .line 24
    :cond_13
    new-instance v2, Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate$Proxy;

    invoke-direct {v2, p0}, Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    :try_start_18
    invoke-interface {v2}, Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_30} :catch_33

    if-eqz v3, :cond_20

    return-object v2

    :catch_33
    :cond_33
    return-object v0
.end method

.method public static getService()Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    .line 77
    invoke-static {v0}, Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;->getService(Ljava/lang/String;)Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.qti.hardware.sensorscalibrate@1.0::ISensorsCalibrate"

    .line 70
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/sensorscalibrate/V1_0/ISensorsCalibrate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract SensorsCal(IB)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
