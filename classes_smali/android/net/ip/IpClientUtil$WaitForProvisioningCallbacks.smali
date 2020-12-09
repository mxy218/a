.class public Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;
.super Landroid/net/ip/IpClientCallbacks;
.source "IpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClientUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitForProvisioningCallbacks"
.end annotation


# instance fields
.field private final mCV:Landroid/os/ConditionVariable;

.field private mCallbackLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/net/ip/IpClientCallbacks;-><init>()V

    .line 46
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 2

    .line 66
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 67
    iget-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 68
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 2

    .line 60
    iput-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 61
    iget-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 62
    return-void
.end method

.method public waitForProvisioning()Landroid/net/LinkProperties;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 55
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method
