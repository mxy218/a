.class public final synthetic Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$wVvhQIrVpe7aFDjrvNElD635YYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;

.field private final synthetic f$1:Lcom/android/settingslib/media/MediaDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;Lcom/android/settingslib/media/MediaDevice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$wVvhQIrVpe7aFDjrvNElD635YYA;->f$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object p2, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$wVvhQIrVpe7aFDjrvNElD635YYA;->f$1:Lcom/android/settingslib/media/MediaDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$wVvhQIrVpe7aFDjrvNElD635YYA;->f$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iget-object p0, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$wVvhQIrVpe7aFDjrvNElD635YYA;->f$1:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->lambda$connectDevice$0$MediaDeviceUpdateWorker(Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method
