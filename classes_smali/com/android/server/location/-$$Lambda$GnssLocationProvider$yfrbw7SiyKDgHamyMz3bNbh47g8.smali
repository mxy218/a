.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$yfrbw7SiyKDgHamyMz3bNbh47g8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$yfrbw7SiyKDgHamyMz3bNbh47g8;->f$0:Lcom/android/server/location/GnssLocationProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$yfrbw7SiyKDgHamyMz3bNbh47g8;->f$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->lambda$reportGnssServiceDied$8$GnssLocationProvider()V

    return-void
.end method
