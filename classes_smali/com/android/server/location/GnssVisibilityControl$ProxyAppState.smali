.class final Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssVisibilityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyAppState"
.end annotation


# instance fields
.field private mHasLocationPermission:Z

.field private mIsLocationIconOn:Z


# direct methods
.method private constructor <init>(Z)V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean p1, p0, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    .line 89
    return-void
.end method

.method synthetic constructor <init>(ZLcom/android/server/location/GnssVisibilityControl$1;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;-><init>(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    return p1
.end method
