.class Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;
.super Ljava/lang/Object;
.source "GnssGeofenceProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssGeofenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssGeofenceProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofence(IDDDIIII)Z
    .registers 13
    .param p1, "geofenceId"  # I
    .param p2, "latitude"  # D
    .param p4, "longitude"  # D
    .param p6, "radius"  # D
    .param p8, "lastTransition"  # I
    .param p9, "monitorTransitions"  # I
    .param p10, "notificationResponsiveness"  # I
    .param p11, "unknownTimer"  # I

    .line 145
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/GnssGeofenceProvider;->access$200(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method public isGeofenceSupported()Z
    .registers 2

    .line 139
    invoke-static {}, Lcom/android/server/location/GnssGeofenceProvider;->access$100()Z

    move-result v0

    return v0
.end method

.method public pauseGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"  # I

    .line 158
    invoke-static {p1}, Lcom/android/server/location/GnssGeofenceProvider;->access$500(I)Z

    move-result v0

    return v0
.end method

.method public removeGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"  # I

    .line 150
    invoke-static {p1}, Lcom/android/server/location/GnssGeofenceProvider;->access$300(I)Z

    move-result v0

    return v0
.end method

.method public resumeGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"  # I
    .param p2, "transitions"  # I

    .line 154
    invoke-static {p1, p2}, Lcom/android/server/location/GnssGeofenceProvider;->access$400(II)Z

    move-result v0

    return v0
.end method
