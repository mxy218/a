.class public interface abstract Landroid/hardware/authsecret/V1_0/IAuthSecret;
.super Ljava/lang/Object;
.source "IAuthSecret.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;,
        Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.authsecret@1.0::IAuthSecret"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/authsecret/V1_0/IAuthSecret;
    .registers 5

    .line 20
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 21
    return-object v0

    .line 24
    :cond_4
    nop

    .line 25
    const-string v1, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_14

    instance-of v3, v2, Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v3, :cond_14

    .line 28
    check-cast v2, Landroid/hardware/authsecret/V1_0/IAuthSecret;

    return-object v2

    .line 31
    :cond_14
    new-instance v2, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 34
    :try_start_19
    invoke-interface {v2}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_36

    if-eqz v3, :cond_34

    .line 36
    return-object v2

    .line 38
    :cond_34
    goto :goto_21

    .line 40
    :cond_35
    goto :goto_37

    .line 39
    :catch_36
    move-exception p0

    .line 42
    :goto_37
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/authsecret/V1_0/IAuthSecret;
    .registers 1

    .line 49
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public static getService()Landroid/hardware/authsecret/V1_0/IAuthSecret;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService(Ljava/lang/String;)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/authsecret/V1_0/IAuthSecret;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const-string v0, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService(Ljava/lang/String;Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

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

.method public abstract primaryUserCredential(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

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

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
