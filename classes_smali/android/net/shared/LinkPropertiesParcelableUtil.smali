.class public final Landroid/net/shared/LinkPropertiesParcelableUtil;
.super Ljava/lang/Object;
.source "LinkPropertiesParcelableUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toStableParcelable(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    return-object p0
.end method

.method public static toStableParcelable(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    return-object p0
.end method
