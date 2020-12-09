.class public Lcom/android/server/location/PassiveProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "PassiveProvider.java"


# static fields
.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;


# instance fields
.field private mReportLocation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 40
    new-instance v10, Lcom/android/internal/location/ProviderProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v10, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    .line 49
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    .line 51
    sget-object p1, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {p0, p1}, Lcom/android/server/location/PassiveProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 52
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/location/PassiveProvider;->setEnabled(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " report location="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 67
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3

    .line 57
    iget-boolean p1, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    iput-boolean p1, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    .line 58
    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 3

    .line 61
    iget-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    if-eqz v0, :cond_7

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/location/PassiveProvider;->reportLocation(Landroid/location/Location;)V

    .line 64
    :cond_7
    return-void
.end method
