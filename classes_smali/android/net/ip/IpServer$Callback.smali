.class public Landroid/net/ip/IpServer$Callback;
.super Ljava/lang/Object;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldEnableNat()Z
    .registers 2

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public updateInterfaceState(Landroid/net/ip/IpServer;II)V
    .registers 4
    .param p1, "who"  # Landroid/net/ip/IpServer;
    .param p2, "state"  # I
    .param p3, "lastError"  # I

    .line 123
    return-void
.end method

.method public updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "who"  # Landroid/net/ip/IpServer;
    .param p2, "newLp"  # Landroid/net/LinkProperties;

    .line 135
    return-void
.end method
