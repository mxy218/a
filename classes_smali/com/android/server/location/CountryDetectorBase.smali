.class public abstract Lcom/android/server/location/CountryDetectorBase;
.super Ljava/lang/Object;
.source "CountryDetectorBase.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDetectedCountry:Landroid/location/Country;

.field protected final mHandler:Landroid/os/Handler;

.field protected mListener:Landroid/location/CountryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/location/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/CountryDetectorBase;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract detectCountry()Landroid/location/Country;
.end method

.method protected notifyListener(Landroid/location/Country;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_7

    .line 69
    invoke-interface {v0, p1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 71
    :cond_7
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/location/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 59
    return-void
.end method

.method public abstract stop()V
.end method