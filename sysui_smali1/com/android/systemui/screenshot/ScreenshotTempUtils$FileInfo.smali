.class Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;
.super Ljava/lang/Object;
.source "ScreenshotTempUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotTempUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileInfo"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field lastModified:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
