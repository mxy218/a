.class public interface abstract Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;
.super Ljava/lang/Object;
.source "ISensorTest.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;,
        Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTest"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;
    .registers 8
    .param p0, "binder"  # Landroid/os/IHwBinder;

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 8
    return-object v0

    .line 11
    :cond_4
    nop

    .line 12
    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTest"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 14
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_15

    instance-of v3, v2, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;

    if-eqz v3, :cond_15

    .line 15
    move-object v0, v2

    check-cast v0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;

    return-object v0

    .line 18
    :cond_15
    new-instance v3, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Proxy;

    invoke-direct {v3, p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v3, "proxy":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;
    :try_start_1a
    invoke-interface {v3}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 22
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_37

    if-eqz v6, :cond_35

    .line 23
    return-object v3

    .line 25
    .end local v5  # "descriptor":Ljava/lang/String;
    :cond_35
    goto :goto_22

    .line 27
    :cond_36
    goto :goto_38

    .line 26
    :catch_37
    move-exception v1

    .line 29
    :goto_38
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;
    .registers 2
    .param p0, "iface"  # Landroid/os/IHwInterface;

    .line 33
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTest"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;
    .registers 2
    .param p0, "serviceName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTest"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract cancelCaptureTest(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract captureTest(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSensorInfo(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;)I
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

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract spiSelfTest()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSensorTest(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensortestCmd;Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
