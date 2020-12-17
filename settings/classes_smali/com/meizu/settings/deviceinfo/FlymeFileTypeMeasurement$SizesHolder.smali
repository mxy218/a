.class public Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;
.super Ljava/lang/Object;
.source "FlymeFileTypeMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizesHolder"
.end annotation


# instance fields
.field audioSizeInByte:J

.field dataAppSizeInByte:J

.field imageSizeInByte:J

.field videoSizeInByte:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
