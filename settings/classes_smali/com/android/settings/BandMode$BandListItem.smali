.class Lcom/android/settings/BandMode$BandListItem;
.super Ljava/lang/Object;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BandListItem"
.end annotation


# instance fields
.field private mBandMode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    .line 111
    iput p1, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    return-void
.end method


# virtual methods
.method public getBand()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 119
    iget v0, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    invoke-static {}, Lcom/android/settings/BandMode;->access$300()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Band mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_1d
    invoke-static {}, Lcom/android/settings/BandMode;->access$300()[Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    aget-object p0, v0, p0

    return-object p0
.end method
