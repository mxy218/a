.class public final Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
.super Landroid/net/IIpConnectivityMetrics$Stub;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Impl"
.end annotation


# static fields
.field static final CMD_DEFAULT:Ljava/lang/String; = ""

.field static final CMD_FLUSH:Ljava/lang/String; = "flush"

.field static final CMD_LIST:Ljava/lang/String; = "list"

.field static final CMD_PROTO:Ljava/lang/String; = "proto"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Landroid/net/IIpConnectivityMetrics$Stub;-><init>()V

    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 2

    .line 303
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private enforceDumpPermission()V
    .registers 2

    .line 307
    const-string v0, "android.permission.DUMP"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private enforceNetdEventListeningPermission()V
    .registers 5

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 316
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 320
    return-void

    .line 317
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 317
    const-string v0, "Uid %d has no permission to listen for netd events."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IpConnectivityMetrics"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method


# virtual methods
.method public addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 4

    .line 324
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 325
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez v0, :cond_b

    .line 326
    const/4 p1, 0x0

    return p1

    .line 328
    :cond_b
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 285
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceDumpPermission()V

    .line 287
    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_a

    aget-object p1, p3, v0

    goto :goto_c

    :cond_a
    const-string p1, ""

    .line 288
    :goto_c
    const/4 p3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x32b09e

    const/4 v3, 0x1

    if-eq v1, v2, :cond_36

    const v2, 0x5d03b04

    if-eq v1, v2, :cond_2d

    const v0, 0x65fc9e8

    if-eq v1, v0, :cond_22

    :cond_21
    goto :goto_40

    :cond_22
    const-string/jumbo v0, "proto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    move v0, v3

    goto :goto_41

    :cond_2d
    const-string v1, "flush"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_41

    :cond_36
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 v0, 0x2

    goto :goto_41

    :goto_40
    move v0, p3

    :goto_41
    if-eqz v0, :cond_51

    if-eq v0, v3, :cond_4b

    .line 297
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$400(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 298
    return-void

    .line 293
    :cond_4b
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$300(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 294
    return-void

    .line 290
    :cond_51
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$200(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 291
    return-void
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .registers 3

    .line 279
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceConnectivityInternalPermission()V

    .line 280
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$100(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I

    move-result p1

    return p1
.end method

.method public removeNetdEventCallback(I)Z
    .registers 3

    .line 333
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez v0, :cond_b

    .line 336
    const/4 p1, 0x1

    return p1

    .line 338
    :cond_b
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->removeNetdEventCallback(I)Z

    move-result p1

    return p1
.end method
